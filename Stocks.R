IBM = read.csv(choose.files())
IBM$Date = as.Date(IBM$Date, "%m/%d/%y")

GE = read.csv(choose.files())
GE$Date = as.Date(GE$Date, "%m/%d/%y")

ProcterGamble = read.csv(choose.files())
ProcterGamble$Date = as.Date(ProcterGamble$Date, "%m/%d/%y")

CocaCola = read.csv(choose.files())
CocaCola$Date = as.Date(CocaCola$Date, "%m/%d/%y")

Boeing = read.csv(choose.files())
Boeing$Date = as.Date(Boeing$Date, "%m/%d/%y")

summary(Boeing)
summary(IBM)
summary(GE)
summary(CocaCola)
sd(ProcterGamble$StockPrice)
plot(CocaCola$Date, CocaCola$StockPrice, type = "l", col ="red")
lines(ProcterGamble$Date, ProcterGamble$StockPrice, col ="blue")
abline(v=as.Date(c("1983-01-01")), lwd=2)
plot(CocaCola$Date[301:432], CocaCola$StockPrice[301:432], type="l", col="red", ylim=c(0,210))
lines(ProcterGamble$Date[301:432], ProcterGamble$StockPrice[301:432], col ="blue")
lines(IBM$Date[301:432], IBM$StockPrice[301:432], col ="green")
lines(GE$Date[301:432], GE$StockPrice[301:432], col ="purple")
lines(Boeing$Date[301:432], Boeing$StockPrice[301:432], col ="black")
abline(v=as.Date(c("2004-01-01")), lwd=2)
abline(v=as.Date(c("2005-01-01")), lwd=2)
tapply(IBM$StockPrice, months(IBM$Date), mean)
mean(IBM$StockPrice)
tapply(GE$StockPrice, months(GE$Date), mean)
tapply(CocaCola$StockPrice, months(CocaCola$Date), mean)
#Highest average mean
mean(CocaCola$StockPrice)
mean(GE$StockPrice)

