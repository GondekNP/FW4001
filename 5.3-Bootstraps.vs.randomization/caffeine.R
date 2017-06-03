suppressMessages(library(Lock5Data))
data("CaffeineTaps")
invisible(CaffeineTaps)
RandDist <- do(1000)*{diffmean(Taps~shuffle(Group), data=CaffeineTaps)}