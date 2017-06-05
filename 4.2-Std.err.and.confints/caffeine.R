suppressMessages(library(Lock5Data))
data("CaffeineTaps")
invisible(CaffeineTaps)
CaffGroup <- filter(CaffeineTaps,Group=="Caffeine")
CaffBoot <- do(1000)*{mean(~Taps, data=resample(CaffGroup))}
