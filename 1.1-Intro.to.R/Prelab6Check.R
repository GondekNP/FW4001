PreLab6Check <- function(x500){
      if (length(which(ls(envir = globalenv())=="PL6Data")) > 0){
            PL6Data<-get("PL6Data", envir=globalenv())
      } else {print("Is your data frame called PL6Data? If not, rename it PL6Data (By entering - PL6Data <- WhateverYourDataIsCalled), and try again.");break}
      if (length(which(ls(envir = globalenv())=="PL6Rand")) > 0){
            PL6Rand<-get("PL6Rand", envir=globalenv())
      } else {print("Is your Randomization Distribution called PL6Rand? If not, rename it PL6Rand (By entering - PL6Rand <- WhateverYourRandIsCalled), and try again.");break}
      if (length(which(ls(envir = globalenv())=="PL6DiffMean")) > 0){
            PL6Rand<-get("PL6Rand", envir=globalenv())
      } else {print("Is your difference in means called PL6DiffMean? If not, rename it PL6DiffMean (By entering - PL6DiffMean <- WhateverYourDiffMeanIsCalled), and try again.");break}
      suppressMessages(library(devtools))
      invisible(suppressMessages(source_url(url = "https://raw.githubusercontent.com/GondekNP/FW4001/master/1.2-R.as.a.calculator/c.R")))
      if(nrow(PL6Data)>=20){
            if(nrow(PL6Rand)>=10000){
                  .ver(x500,6,1)
            } else{print("You need to run your do loop for at least 10,000 iterations.")}
      } else{print("You need at least 20 observations for your data set.")}
      
}