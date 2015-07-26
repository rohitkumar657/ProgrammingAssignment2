## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# Matrix inversion is usually a costly computation and there may be some benefit
# to caching the inverse of a matrix rather than compute it repeatedly. The
# following two functions are used to cache the inverse of a matrix.

# makeCacheMatrix creates a list containing a function to
# 1. set the value of the matrix
# 2. get the value of the matrix
# 3. set the value of inverse of the matrix
# 4. get the value of inverse of the matrix
makeCacheMatrix <- function( x = numeric())
{    		
	lov1 = length(x)
	bob <<- matrix(x,nrow = sqrt(lov1), ncol = sqrt(lov1))

	set_matrix = function(z)
	{
	x <<- z
         	lov2 = length(x)	
         	bob <<- matrix(x,nrow = sqrt(lov2), ncol = sqrt(lov2))
         	lee <<- NULL
         }
	get_matrix = function()
	{
         	bob
         }
	set_inverse = function(y)
	{
         	lov3 = length(y)
         	lee <<- matrix(y, nrow = sqrt(lov3), ncol = sqrt(lov3))
         	}	
	get_inverse = function()		
	{
	lee
	}		
	list( set_matrix = set_matrix, get_matrix = get_matrix, set_inverse = set_inverse, get_inverse = get_inverse)
}


# The below function returns the inverse of the matrix. It initially checks if
# the inverse has already been computed. If that is the case, it gets the result and skips the
# computation. Otherwise, it computes the inverse, sets the value in the cache via
# setinverse function.
# Assuming the matrix is always invertible.

cacheSolve <- function(x,...)
{
 		if(!is.null(lee))
 		{
         	message("Getting cached Inverse")
         	}
         else
	         {	
         	message("Creating new Inverse")
         	lee <<- solve(bob)
         	}
	lee
}

