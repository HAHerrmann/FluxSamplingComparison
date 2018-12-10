

f <- function(x, p1 = 0.5, p2 = 1 - p1, m1, m2)
  p1 * dnorm(x, m1) + p2 * dnorm(x, m2)

par(mar=c(5,6,4,1)+.1)

x <- seq(-5, 5, len=101)
dens <- f(x, p1 = 0.5, m1=0, m2=2)
plot(x, dens, type = "l",ylim=c(-0.03,0.28),xlim=c(-7, 8),
     xlab="Flux",ylab="Probability", main="Flux probability of Reaction X",
     cex.axis=2,cex.lab=2)
polygon(x,dens,col=adjustcolor('black',0.1))
x <- seq(-7, 5, len=101)
dens <- f(x, p1 = 0.7, m1=-4, m2=2)
lines(x, dens, type = "l")
polygon(x,dens,col=adjustcolor('black',0.4))
points(1.8,0,pch=8,cex=6,lwd=5)
points(-1.9,0,pch=8,cex=6,lwd=5)
lines(x=seq(-7,5),y=rep(-0.03,13),lwd=5)
lines(x=seq(-5,5),y=rep(-0.02,11),lwd=5)
legend("topright",c("Condition 1", "Condition 2"),
       col=c(adjustcolor('black',0.4),adjustcolor('black',0.1)),cex = 1.8,pch = c(15,15))