## File Name: read.fwf2.R
## File Version: 1.02
## File Last Change: 2017-01-18 11:02:54



############################################################################
# This function reads fwf files                                            #
read.fwf2 <- function( file , format , variables = NULL){
    ff <- readLines( file )
    ind.ff1 <- c( 1, cumsum(format)[- length(format) ] + 1 )
    ind.ff2 <- cumsum(format)
    I <- length(format)
    n <- length( ff )
    dfr <- data.frame( matrix(0 , nrow= n , ncol=I ) )
    for (ii in 1:I){  
		dfr[,ii ] <- as.numeric( substring( ff , ind.ff1[ii] , ind.ff2[ii] )  ) 
					}
    if (!is.null(variables)){ 
		colnames(dfr) <- variables 
			}
    return(dfr)
    } 
############################################################################
