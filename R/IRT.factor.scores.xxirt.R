## File Name: IRT.factor.scores.xxirt.R
## File Version: 0.02
## File Last Change: 2017-01-18 11:02:47


###########################################################
# object of class xxirt
IRT.factor.scores.xxirt <- function( object , type="EAP" , ... ){
	if ( ! ( type %in% c("EAP") ) ){
		stop("Requested type is not supported!\n")
					}
    # EAP					
    if ( type=="EAP"){
		ll <- object$EAP
					}
	attr(ll,"type") <- type
    return(ll)
        }
###########################################################
