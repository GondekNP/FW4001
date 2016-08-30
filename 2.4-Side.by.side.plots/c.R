.ver<- function (last, checkno){
      #last<-tolower(last) ##avoid case sensitivity
      #last<-paste(rep(last,4), collapse = "")
      #spl<-strsplit(last, split = "")[[1]][1:4] ##to avoid issues with short last names
      spl<-strsplit(last, split="")[[1]]
      
      codec<-1:38
      names(codec)<-c(letters, "-", "'", 0:9) ##to avoid issues with hyphens and apostrophes
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
      full<-full+1
      full<-strsplit(as.character(full), split = "")[[1]]
      return(paste(tail(full,8), collapse=""))
}
.getState <- function(){environment(sys.function(1))$e}
if(sum(.getState()$log$skipped)<1 && !is.null(.getState()$log$skipped) && !identical(environment(), globalenv())){
      .lt=.getState()$log$user
      .ls=(as.numeric(strsplit(x=.getState()$log$lesson, split="")[[1]][3])+4*(as.numeric(strsplit(x=.getState()$log$lesson, split="")[[1]][1])-1))
      print(.ver(.lt, .ls))} else {print("No skipping questions!")}
