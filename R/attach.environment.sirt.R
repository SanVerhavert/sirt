## File Name: attach.environment.sirt.R
## File Version: 0.03
## File Last Change: 2017-01-18 11:02:46
##################################################
# attach all elements of an object in an environment   
.attach.environment.sirt <- function( res , envir ){
	CC <- length(res)
	for (cc in 1:CC){
		assign( names(res)[cc] , res[[cc]] , envir=envir )		
					}
			}
##################################################
