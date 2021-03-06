## These two functions save an inverse of a function in a cache. 

setwd("~/GitHub/ProgrammingAssignment2")
## this function saves the inverse of a matrix for the future

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y){
        x <<- y
        m <<- NULL 
    }
    get <- function() x
    setinverse <- function(solve) m <<- solve
    getinverse <- function() m
    list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## this function created the inverse of the cached matrix created in the above function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinverse()
        if(!is.null(inv)){
            message("getting cached data")
            return(inv)
        }
        data <- x$get()
        inv <- solve(x)
        x$setinv(inv)
        inv
}
