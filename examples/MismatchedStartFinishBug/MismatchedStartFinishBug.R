# Translation of Sampling Generator code originally written in VisualBasic into R
# VisualBasic author:  Sivan Margalit
# R translator:  Barbara Lerner
# April 2014

# Load the library to create the provenance graphs.  All the function calls below that begin "ddg."
# are calls to functions in this library.

# Works with 0.5.003
# Does not work with 0.5.004
#source("/Users/blerner/Documents/Process/DataProvenance/RDataTracker_0.5.004/RDataTracker/R/RDataTracker.R_0.5.004.1.R")
#source("/Users/blerner/Documents/Process/DataProvenance/github/RDataTracker/R/RDataTracker.R")
library(RDataTracker)
options(warn=2)
ddg.debug.off()

# Initialize the provenance graph
ddg.init("/Users/blerner/Documents/Process/DataProvenance/workspace/ddg-r/examples/MismatchedStartFinishBug/MismatchedStartFinishBug.R",
		"/Users/blerner/Documents/Process/DataProvenance/workspace/ddg-r/examples/MismatchedStartFinishBug/ddg",
		enable.console = TRUE)

f <- function () {
	ddg.start()
	a <- 1
	ddg.finish()
}

ddg.debug.on()
x <- f()
ddg.debug.off()
ddg.save()