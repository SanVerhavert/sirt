## File Name: mcmc_coef.R
## File Version: 0.03
## File Last Change: 2017-01-18 11:02:49

###########################################
# coefficients from one MCMC chain
mcmc_coef <- function( mcmcobj , exclude="deviance" ){	
	mcmcobj <- mcmcobj[ , ! ( colnames(mcmcobj) %in% exclude ) ]
	res <- colMeans(mcmcobj)	
	colnames(mcmcobj) -> names(res)
	return(res)
		}
