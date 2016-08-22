ver<- function (last, checkno){
            last<-tolower(last) ##avoid case sensitivity
            last<-paste(rep(last,4), collapse = "")
            spl<-strsplit(last, split = "")[[1]][1:4] ##to avoid issues with short last names
      
      codec<-1:28
      names(codec)<-c(letters, "-", "'") ##to avoid issues with hyphens and apostrophes
      code<-paste(codec[spl], collapse="")
      code<-as.numeric(code)
      
      x<-code*checkno
      if(checkno%%4==0){
            full<- cos(x) + sin(x)
      }else if(checkno%%4==1){
            full<- tan(x) + sin(x)
      }else if(checkno%%4==2){
            full<- 4*cos(x)
      }else if(checkno%%4==3){
            full<- 7*sin(x)
      }
      
      full<-strsplit(as.character(full), split = "")[[1]]
      return(paste(tail(full), collapse=""))
}

##test for uniqueness
# test<-NULL
# for (x in 1:100){
#       test[x]<-ver("O'Brien", x)
# }
# length(unique(test))==100

