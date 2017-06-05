# Code placed in this file fill be executed every time the
      # lesson is started. Any variables created here will show up in
      # the user's working directory and thus be accessible to them
      # throughout the lesson.

swirl_options(swirl_logging = TRUE)
suppressMessages(library(Lock5Data))
suppressMessages(library(mosaic))
.get_course_path <- function(){
  tryCatch(swirl:::swirl_courses_dir(),
           error = function(c) {file.path(find.package("swirl"),"Courses")}
  )
}
load(file.path(.get_course_path(), "FW4001", "4.1-Bootstrapping", "CaffBoot.Rdata"))
CaffGroup <- read.csv(file.path(.get_course_path(), "FW4001", "4.1-Bootstrapping", "CaffGroup.csv"))
Hi <- read.csv(file.path(.get_course_path(), "FW4001", "4.2-Std.err.and.confints", "Hi.csv"))
Lo <- read.csv(file.path(.get_course_path(), "FW4001", "4.2-Std.err.and.confints", "Lo.csv"))