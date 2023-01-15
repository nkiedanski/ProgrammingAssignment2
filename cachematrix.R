## Functions that are used to create a special object that stores a matrix
## and cache's its inverse.

##  This function, makeCacheMatrix creates a special "vector", which is really 
##  a list containing a function to set the value of a matrix, get the value
##  of a matrix, set the value of the inverse of that matrix and get the value
##  of the inverse the matrix.

 
makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- function(y) {
        x <<- y
        i <<- NULL
    }
    get <- function() x
    setinverse <- function(solve) i <<- solve
    getinverse <- function() i
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}


## Write a short

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
