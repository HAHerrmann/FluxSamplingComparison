library(Hmisc)
library(dplyr)

par(mar=c(2.5,5,0,0)+.1, mfrow=c(2,2))

# Photoynthesis
barplot(c(2.28,2.24), col=c(adjustcolor("red",0.3),adjustcolor("blue",0.3)),ylim = c(0,4),
        ylab = expression(paste(mu, "mol / (gFW s)")),cex.lab= 2,
        names.arg=c("Control","Cold"),cex.names=1.25)
barplot(c(0.72,0.73), col=c(adjustcolor("red",0.3),adjustcolor("blue",0.3)), add=TRUE)
barplot(c(0.72,0.73), angle=c(45,45),density=c(10,10), add=TRUE, col = c("black","black"))
barplot(c(0.72,0.73), angle=c(135,135),density=c(10,10), add=TRUE, col = c("black","black"))
title("Carbon (C) Flux ", line =-1.5,cex.main=2)
errbar(c(0.7,1.9), c(2.28,2.24), 
       c(2.28,2.26)+c(0.12,0.13), c(2.28,2.26)-c(0.12,0.13),
       add=TRUE,col='black')
errbar(c(0.7,1.9), c(0.72,0.73), 
       c(0.72,0.73)+c(0.15,0.16), c(0.72,0.73)-c(0.14,0.13),
       add=TRUE,col='black')
box()
legend(0.4,3.85, legend=c(" ", " ", " ", " "), 
       fill=c(adjustcolor("red",0.3),adjustcolor("blue",0.3),adjustcolor("red",0.3),adjustcolor("blue",0.3)),
       bty="n",cex = 1.5)
legend(0.4,3.85, legend=c(" ", " ", " ", " "), 
       fill=c("black","black","black","black"),
       density=c(0,0,20,20), angle=c(0,0,135,135), bty="n",cex = 1.5) 
legend(0.4,3.85, legend=c("C in-flux Control", "C in-flux Cold", "C e-flux Control", "C e-flux Cold"), 
       fill=c("black","black","black","black"),
       density=c(0,0,20,20), angle=c(0,0,45,45), bty="n",cex = 1.5) 

# Malate
barplot(matrix(c(8.5,12,8,24),nr=2), ylim = c(0,38),
        col=c(adjustcolor("red",0.3),adjustcolor("red",0.3),adjustcolor("blue",0.3),adjustcolor("blue",0.3)),
        beside=TRUE,names.arg=c("Control BOD  Control EOD","Cold BOD   Cold EOD"),cex.names=1.25)
barplot(matrix(c(8.5,12,8,24),nr=2), ylab = expression(paste(mu, "mol / (gWF)")),
        #names.arg = c("Beginning of Day","End of Day"),
        cex.lab = 1.5, cex.main = 1.4, beside=TRUE, cex.main = 2,cex.lab = 2,cex.names = 2,
        angle=c(45,0,45,0),density=c(10,10,10,10),add = TRUE,
        col=c("black","black","black","black"))
title("Malate", line =-1.5,cex.main=2)
errbar(c(1.5,2.5,4.5,5.5), c(8.5,12,8,24), 
       c(8.5,12,8,24)+c(1.4,1.6,0.9,3.7),
       c(8.5,12,8,24)-c(1.4,1.6,0.9,3.7),
       add=TRUE,col='black')
box()
legend(1,34, legend=c(" ", " ", " ", " "), 
       fill=c(adjustcolor("red",0.3),adjustcolor("red",0.3),adjustcolor("blue",0.3),adjustcolor("blue",0.3)),
       bty="n",cex = 1.5) 
legend(1,34, legend=c("Control BOD", "Control EOD", "Cold BOD", "Cold EOD"), fill=c("black","black","black","black"),
       density=c(20, 20,20,20), angle=c(45,0,45,0,45), bty="n",cex = 1.5) 
text(2.5, 14.5, "*",cex = 2.5)
text(5.5, 29.5, "*",cex = 2.5)

# Fumarate
barplot(matrix(c(7.5,13,8,33.5),nr=2), ylim = c(0,38),
        col=c(adjustcolor("red",0.3),adjustcolor("red",0.3),adjustcolor("blue",0.3),adjustcolor("blue",0.3)),
        beside=TRUE,names.arg=c("Control BOD Control EOD","Cold BOD  Cold EOD"),cex.names=1.25)
barplot(matrix(c(7.5,13,8,33.5),nr=2), ylab = expression(paste(mu, "mol / (gWF)")),
        #names.arg = c("Beginning of Day","End of Day"),
        cex.lab = 1.5, cex.main = 1.4, beside=TRUE, cex.main = 2,cex.lab = 2,cex.names = 2,
        angle=c(45,0,45,0),density=c(10,10,10,10),add = TRUE,
        col=c("black","black","black","black"))
title("Fumarate", line =-2,cex.main=2)
box()
errbar(c(1.5,2.5,4.5,5.5), c(7.5,13,8,33.5), 
       c(7.5,13,8,33.5)+c(0.8,1.1,0.4,1.4),
       c(7.5,13,8,33.5)-c(0.8,1.1,0.4,1.4),
       add=TRUE,col='black')
text(2.5, 16, "*",cex = 2.5)
text(5.5, 36.5, "*",cex = 2.5)


# Starch
barplot(matrix(c(1,29,1.5,51),nr=2), ylim = c(0,56),
        col=c(adjustcolor("red",0.3),adjustcolor("red",0.3),adjustcolor("blue",0.3),adjustcolor("blue",0.3)),
        beside=TRUE,names.arg=c("Control BOD Control EOD","Cold BOD  Cold EOD"),cex.names=1.25)
barplot(matrix(c(1,29,1.5,51),nr=2),ylab = "Hexose equivalents", 
        cex.lab = 1.5, cex.main = 1.4, beside=TRUE, cex.main = 2,cex.lab = 2,cex.names = 2,
        angle=c(45,0,45,0),density=c(10,10,10,10),add = TRUE,
        col=c("black","black","black","black"))
box()
errbar(c(1.5,2.5,4.5,5.5), c(1,29,1.5,51), 
       c(1,29,1.5,51)+c(0.7,3.5,0.4,2.5),
       c(1,29,1.5,51)-c(0.7,3.5,0.4,2.5),
       add=TRUE,col='black')
title("Starch", line =-2,cex.main=2)
text(2.5, 33, "*",cex = 2.5)
text(5.5, 55, "*",cex = 2.5)

