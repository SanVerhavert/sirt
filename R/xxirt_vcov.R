## File Name: xxirt_vcov.R
## File Version: 0.04
## File Last Change: 2017-06-15 18:53:26

vcov.xxirt <- function( object , ...)
{
	res <- xxirt_hessian( object )
	return( solve(-res) )
}
