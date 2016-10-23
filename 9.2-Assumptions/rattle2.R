suppressMessages(library(abd))
data("Rattlesnakes")
invisible(Rattlesnakes)
Rattlesnakes
snake.lm<-lm(temp.change ~ meal.size, data = Rattlesnakes)
set.seed(1231)