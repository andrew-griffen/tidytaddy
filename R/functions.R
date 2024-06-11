#' Utilities to make NA the reference factor level
#' @param
#' @keywords naref
#' @export
naref <- function(DF){
	if(is.null(dim(DF))) return(xnaref(DF))
	if(!is.data.frame(DF))
		tsop("You need to give me a data.frame or a factor")
	DF <- lapply(DF, xnaref)
	return(as.data.frame(DF))
}

#' Utilities to make NA the reference factor level
#' @param
#' @keywords xnaref
#' @export
xnaref <- function(x){
	if(is.factor(x))
		if(!is.na(levels(x)[1]))
			x <- factor(x,levels=c(NA,levels(x)),exclude=NULL)
	return(x)
}

#' tidy some models
#'
#' Some additional models not included in broom::tidy()
#' @param lasso a model from gamlr or cv.gamlr
#' @keywords lasso tidy
#' @export
tidy_lasso <- function(lasso){
  UseMethod("tidy_lasso")
}

#' tidy as gamlr::gamlr.cv() object
#'
#' This model is not included in broom::tidy() so I made a similar function
#' @param lasso a model of class gamlr
#' @keywords lasso tidy gamlr
#' @export
#' @importFrom tibble as_tibble
#' @importFrom dplyr mutate everything select
#' @importFrom tidyr pivot_longer
tidy_lasso.gamlr <- function(lasso){
  lasso_df = as.data.frame(t(as.matrix(lasso$beta)))
  lasso_df <- lasso_df |> as_tibble()
  lasso_df <- lasso_df |> mutate(lambda = lasso$lambda) 
  lasso_df <- lasso_df |> select(lambda, everything())
  lasso_df <- pivot_longer(-lambda, names_to="variable", values_to="estimate") 
  lasso_df <- lasso_df |> arrange(variable, -lambda)
  return(lasso_df)
}

#' tidy as gamlr::gamlr() object
#'
#' This model is not included in broom::tidy() so I made a similar function
#' @param lasso a model of class cv.gamlr
#' @keywords lasso tidy cv.gamlr
#' @export
#' @importFrom tibble as_tibble
#' @importFrom dplyr mutate everything select
#' @importFrom tidyr pivot_longer
tidy_lasso.cv.gamlr <- function(lasso){
  lasso_df = as.data.frame(t(as.matrix(lasso$gamlr$beta)))
  lasso_df <- lasso_df |> as_tibble()
  lasso_df <- lasso_df |> mutate(lambda = lasso$gamlr$lambda) |> left(lambda)
  lasso_df <- lasso_df |> mutate(cv_mean = lasso$cvm)
  lasso_df <- lasso_df |> mutate(cv_se = lasso$cvs)
  lasso_df <- lasso_df |> mutate(lambda_min = 1L*(lasso$gamlr$lambda==lasso$lambda.min))
  lasso_df <- lasso_df |> mutate(lambda_1se = 1L*(lasso$gamlr$lambda==lasso$lambda.1se))
  lasso_df <- lasso_df |> select(lambda,lambda_min,lambda_1se,cv_mean,cv_se,everything())
  return(lasso_df)
}

#' false positive rate: pr(p = 1 | y = 0)
#' 
#' @param .p probability
#' @param .model a model 
#' @export
fpr <- function(.p, .model){
  if (.p<0 | .p>1){
    stop("p must lie between 0 and 1")
  }

  #true values
  true_values <- .model$y

  #predicted probabilities
  phat <- .model$fitted.values

  #prediction given classification cutoff .p
  prediction = (phat > .p)

  #indicator true negatives
  tn <- true_values==0

  #false positive rate: fraction of true negatives classified as positives
  fpr = sum(prediction[tn]==1)/sum(tn)

  return(fpr)
}

#' true negative rate: pr(p = 0 | y = 0)
#' 
#' @param .p probability
#' @param .model a model 
#' @export
tnr <- function(.p, .model){
  if (.p<0 | .p>1){
    stop("p must lie between 0 and 1")
  }

  #actual values
  y <- .model$y

  #predicted probabilities
  phat <- .model$fitted.values

  #prediction given classification cutoff .p
  prediction = (phat > .p)

  #indicator true negatives
  tn <- y==0

  #false positives: fraction of true negatives classified as positives
  rate = sum(prediction[tn]==0)/sum(tn)

  return(rate)
}

#' true positive rate:  pr(p = 1 | y = 1)
#' 
#' @param .p probability
#' @param .model a model 
#' @export
tpr <- function(.p, .model){
  if (.p<0 | .p>1){
    stop("p must lie between 0 and 1")
  }

  #true values
  y <- .model$y

  #predicted probabilities
  phat <- .model$fitted.values

  #prediction given classification cutoff .p
  prediction = (phat > .p)

  #indicator true positives
  tp <- y==1

  #false positives: fraction of true negatives classified as positives
  rate = sum(prediction[tp]==1)/sum(tp)

  return(rate)
}

#' false negative rate: pr(p = 0 | y = 1)
#' 
#' @param .p probability
#' @param .model a model 
#' @export
fnr <- function(.p, .model){
  if (.p<0 | .p>1){
    stop("p must lie between 0 and 1")
  }

  #true values
  y <- .model$y

  #predicted probabilities
  phat <- .model$fitted.values

  #prediction given classification cutoff .p
  prediction = (phat > .p)

  #indicator for true positives
  tp <- y==1

  #rate
  rate = sum(prediction[tp]==0)/sum(tp)

  return(rate)
}

#' function to split data frame into train and test data frames
#' 
#' @param .p probability
#' @param .model a model 
#' @export
split <- function(df, p = .8){
  train <- sample(1:nrow(df), p*nrow(df))
  test <- (-train)
  df_train <- df[train,]
  df_test <- df[test,]
  return(list(train = df_train, test = df_test))
}

#' "confusion" vector
#' 
#' @param .p probability
#' @param .model a model 
#' @export
confusion_vec <- function(.p, .y, .pred){
  if (.p<0 | .p>1){
    stop("p must lie between 0 and 1")
  }

  #prediction given classification cutoff .p
  prediction = (.pred > .p)

  #false positive rate: pr(p = 1 | y = 0)
  fpr = sum(prediction[.y==0]==1)/sum(.y==0)

  #true negative rate: pr(p = 0 | y = 0)
  tnr = sum(prediction[.y==0]==0)/sum(.y==0)

  #true positive rate: pr(p = 1 | y = 1)
  tpr = sum(prediction[.y==1]==1)/sum(.y==1)

  #false negative rate: pr(p = 0 | y = 1)
  fnr = sum(prediction[.y==1]==0)/sum(.y==1)

  confusion_vec = c("p" = .p, "fpr" = fpr, "tnr" = tnr, "tpr" = tpr, "fnr" = fnr)

  return(confusion_vec)
}



