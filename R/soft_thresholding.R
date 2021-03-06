## File Name: soft_thresholding.R
## File Version: 0.03
## File Last Change: 2017-01-18 11:02:54


soft_thresholding <- function( x , lambda )
{
    x_abs <- abs(x)
    x <- ifelse( x_abs > lambda , x - sign(x) * lambda , 0 )
    return(x)
}


mlnormal_soft_thresholding <- soft_thresholding
