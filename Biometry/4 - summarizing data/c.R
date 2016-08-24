
library(devtools)
suppressMessages(source_url('https://raw.githubusercontent.com/GondekNP/FW4001/master/Ver.R'))
.getState <- function(){environment(sys.function(1))$e}
if(sum(.getState()$log$skipped)<2 && !is.null(.getState()$log$skipped) && !identical(environment(), globalenv())){.lt=.getState()$log$user;.ls=as.numeric(strsplit(x=.getState()$log$lesson, split="")[[1]][1]);print(.ver(.lt, .ls))} else {print("Too many skips!")}
