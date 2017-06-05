library(swirlify)

# http://swirlstats.com/instructors.html
set_lesson("4.2-Std.err.and.confints/lesson.yaml") # Set the lesson directly
demo_lesson()

#  I'm on 3.1...

# cntrl + shift+f10
install.packages("swirl")
library(swirl)
uninstall_all_courses(force = FALSE)
install_course_github("GondekNP", course_name = "FW4001" )
swirl()
