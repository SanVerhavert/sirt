## File Name: btm_fit_combine_tables.R
## File Version: 0.01
## File Last Change: 2017-05-10 17:16:55

########################################################################
btm_fit_combine_tables <- function( win1 , win2 , ind1 , ind2 , TP )
{
	win <- rep( 0 , TP )
	win[ind1] <- win1[  , 1] 
	win[ind2] <- win[ind2] + win2[  , 1] 
	return(win)
}	
#####################################################################		
