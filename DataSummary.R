#' Load libraries
library(googlesheets)
library(dplyr)
mydat<-gs_title("swirl1 (Responses)" )
swirlresults<-gs_read_csv(mydat)
write.csv(swirlresults, file="temp.csv", row.names = FALSE)

#' Select the swirl csv file
temp<-swirlify::google_form_decode("temp.csv")

#' Process statistics by user
temp%>%group_by(user, lesson_name)%>%summarize(propcorrect=mean(correct, na.rm=TRUE), num.q=length(unique(question_number)))
