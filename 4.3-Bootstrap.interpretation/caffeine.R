suppressMessages(library(Lock5Data))
data("CaffeineTaps")
invisible(CaffeineTaps)
CaffGroup <- filter(CaffeineTaps,Group=="Caffeine")
CaffBoot <- do(1000)*{mean(~Taps, data=resample(CaffGroup))}
CaffMean <- mean(~Taps, data=CaffGroup)
CaffSD <- sd(~result, data=CaffBoot)
Hi <- CaffMean + 2 * CaffSD
Lo <- CaffMean - 2 * CaffSD

