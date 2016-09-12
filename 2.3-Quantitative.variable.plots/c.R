.ver<- function (x5, prelab, section){
  x5<-tolower(x5)
  firstno<-as.numeric(paste(prelab, section, "000000", sep="", collapse=""))
  lastno<-as.numeric(paste(prelab, section, "009999", sep="", collapse=""))
  codePos<-c(firstno:lastno)
  set.seed((prelab - 1) * 4 + section)
  x500<-c("and03241","brow3407", "carrx197", "diamo071","dunne076","fewxx004", "gilka005", "grunk008", "haake035", "haask013", "horto093", "huang664", "huemp008", "jenni241", "khang073", "lohma047", "lopez616", "mcgra349", "mitc0414", "mower012", "mulli219", "quada004", "rodri806", "rothe085", "runni044", "schae396", "smit8042", "steel314", "strai085", "tayl1082", "templ149", "thom5060", "wang5922", "welch231", "westx409", "biome098", "steph629")
  vc<-sample(codePos, replace = FALSE, size = length(x500))
  names(vc)<-x500
  if(!is.na(vc[x5])){return(vc[x5])}
  if (is.na(vc[x5])){return(paste("Is your x500 ", x5, "? If that is not correct, you need to re-do the prelab section using your correct x500 to get your 8-digit code. If that is correct, send John (jfieberg@umn.edu) and Nick (gonde012@umn.edu) an email with a screen shot of your console."))}
  }
.getState <- function(){environment(sys.function(1))$e}
if(sum(.getState()$log$skipped)<1 && !is.null(.getState()$log$skipped) && !identical(environment(), globalenv())){
      .lt=.getState()$log$user
      .ls=as.numeric(strsplit(x=.getState()$log$lesson, split="")[[1]][3])
      .lp=as.numeric(strsplit(x=.getState()$log$lesson, split="")[[1]][1])
      print(.ver(.lt, .lp, .ls))} else {print("No skipping questions!")}
