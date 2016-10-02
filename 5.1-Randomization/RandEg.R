set.seed(13608)
newx<-0
for (j in 1:25){
nextx<-rnorm(n = 20, mean = 0, sd = .675)
newx<- c(newx, nextx)
print(histogram(x = newx, xlim=c(-3,3), ylim=c(0,85), xlab="Diffmean (Caffeine - NoCaffeine)", main="Randomization Distribution (H0 is TRUE)", width=.25, type='count'))
Sys.sleep(.1)
}