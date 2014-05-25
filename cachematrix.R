## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

        m <- NULL         #sets the default value to null
        set <- function(y) {     
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setsolve <- function(solve) m <<- solve   #here this matrix is inversed
        getsolve <- function() m                  
        list(set = set, get = get,
             setsolve = setsolve,
             getsolve = getsolve)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        m <- x$getsolve()                     #here the function creates an inverted matrix
        if(!is.null(m)) {
                message("getting cached data")
                return(m)               
        }
        matrix <- x$get()
        m <- solve(data, ...)
        x$setsolve(m)
        m
}
