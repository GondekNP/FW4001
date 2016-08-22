library(devtools)
source_url('https://drive.google.com/open?id=0B5SLx6M1A7DgYjM1MVVJYk80Nk0')

getState <- function(){environment(sys.function(1))$e}
lt=getState()$log$user
print(ver(lt, 1))

