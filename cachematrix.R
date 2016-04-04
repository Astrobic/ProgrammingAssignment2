## Functions that take the inverse of a matrix and creae a cache
## First 'makeCacheMatrix' makes a matrix whose inverse can be cached


makeCacheMatrix <- function(x = matrix()) {
	## start an inverse
	m <- NULL   ##set a matrix
	set <- function(y){
	x <<- y
	m <<- NULL
}
## Get the matrix
get <- function() {
	x
}
## Set matrix inverse
setInverse <- function(inverse) {
	i <<- inverse
}
## Get matrix inverse
getInverse <- function() {
## Return the inverse property
	m
}
## list the methods
list(set = set, get = get,
setInverse = setInverse,
getInverse = getInverse)
}

## Compute the matrix inverse from the matrix created above 
## cacheSolve will retrieve cache inverse

cacheSolve <- function(x, ...) {     ## Return a matrix that is the inverse of 'x'
	m <- x$getInverse()
	if( !is.null(m) ) {
	message("getting cached data")
	return(m)
}
## Get the matrix
data <- x$get()
## Compute inverse by multiplying matrix
m <- solve(data) %*% data
## Set inverse
x$setInverse(m)
	m      
}


