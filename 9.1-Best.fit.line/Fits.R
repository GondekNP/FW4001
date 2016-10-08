AData<-data.frame(south=seq(0, 1000, by=100), temp=seq(30,80, by=5))

BData<-AData
BData$temp<-BData$temp + rep(c(3,-3), length=11)
  
CData<-BData
CData$temp<-CData$temp + rep(c(10,-10), length=11)

DData<-CData
DData$temp<-DData$temp + rep(c(10,-10), length=11)

plot(AData$temp~AData$south, col="red", ylab="Temp", xlab="Miles South", xlim=c(-50,1050), ylim=c(0,110))
points(BData$temp~BData$south, col="blue")
points(CData$temp~CData$south, col="green")
points(DData$temp~DData$south, col="pink")
legend("topleft", inset=.05, title="Datasets",
       c("AData", "BData", "CData", "DData"), lwd=2, lty=c(1, 1, 1, 1, 2), col=c("red", "blue","green", "pink"))
