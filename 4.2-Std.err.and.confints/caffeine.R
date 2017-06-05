suppressMessages(library(Lock5Data))
data("CaffeineTaps")
invisible(CaffeineTaps)
CaffBoot <- do(1000)*{mean(~Taps, data=resample(CaffGroup))}
