# TODO: Add comment
# 
# Author: blerner
###############################################################################

start.time <- Sys.time()
library(RDataTracker)
#source("/Users/blerner/Documents/Process/DataProvenance/github/RDataTracker/R/RDataTracker.R")

## Directories
if (interactive()) {
  testDir <- getwd()
  ddgDir <- "ddg"
} else {
  testDir <- "[DIR_DEFAULT]"
  ddgDir <- "[DDG-DIR]"
  setwd(testDir)
}

ddg.r.script.path = paste(testDir,"EvalTest-Console.R",sep="/")
ddg.path = paste(testDir,ddgDir,sep="/")

ddg.init(ddg.r.script.path,
		ddg.path,
     enable.console=TRUE)

### Functions

f <- function(x) {
  ddg.procedure(lookup.ins=TRUE)
  ddg.return(10)
}

g <- function() {
  return (3)
}

#ddg.eval("a <- 1")
#ddg.eval("b <- f(a)")
#ddg.eval("d <- f(2)")

a <- 1
b <- f(a)
d <- f(2)
d2 <- f(a+2)
e <- f(a)
h <- g()
i <- f(a+b)

ddg.save()
end.time <- Sys.time()
print(paste("Execution time =", (end.time - start.time)))

