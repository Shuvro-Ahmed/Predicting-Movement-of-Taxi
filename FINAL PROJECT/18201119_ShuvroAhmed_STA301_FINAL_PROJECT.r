library(markovchain)
DriverZone <- c("East","South","West")
DriverZone
ZoneTransition <- matrix(c(0.3,0.3,0.4,0.4,0.4,0.2,0.5,0.3,0.2),nrow = 3, byrow = TRUE, dimname = list(DriverZone,DriverZone))
ZoneTransition
MCZone <-  new("markovchain", states = DriverZone, byrow = TRUE, transitionMatrix = ZoneTransition, name = "DriverMovement")
MCZone
class(MCZone)
#After 2 trips
MCZone^2
#After 4 trips
MCZone^4
MCZone^9
steadyStates(MCZone)
library(diagram)
#plot
plot(MCZone)

row.names(ZoneTransition) <- DriverZone; colnames(ZoneTransition) <- DriverZone
plotmat(ZoneTransition,pos = c(1,2),
        lwd = 1, box.lwd = 2,
        cex.txt = 0.8,
        box.size = 0.1,
        box.type = "circle",
        box.prop = 0.5,
        box.col = "light blue",
        arr.length=.1,
        arr.width=.1,
        self.cex = .6,
        self.shifty = -.01,
        self.shiftx = .14,
        main = "Markov Chain")
