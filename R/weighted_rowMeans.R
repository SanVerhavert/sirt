## File Name: weighted_rowMeans.R
## File Version: 0.04
## File Last Change: 2017-01-18 11:02:55

weighted_rowMeans <- function( mat , wgt=NULL){
	wgt <- weighted_stats_extend_wgt( wgt=wgt , mat=mat )
	mat1 <- rowSums( mat * wgt , na.rm=TRUE) 
	mat2 <- rowSums( wgt , na.rm=TRUE) 
	mat1 <- mat1 / mat2
	return(mat1)
}
