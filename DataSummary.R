#' Load libraries
library(dplyr)

#' Select the swirl csv file
temp<-swirlify::google_form_decode()

#' Process statistics by user
temp%>%group_by(user)%>%summarize(propcorrect=mean(correct, na.rm=TRUE), num.q=length(unique(question_number)))