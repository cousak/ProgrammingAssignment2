#R Programming Assignment 2 - Lexical Scoping
#This code is very challenging, no way I could replicate it without help
makeCacheMatrix <- function(x = matrix()) {
        inversecache <- NULL
        set <- function(y) {
                x <<- y
                inversecache <<- NULL
        }
        get <- function() x
        setinverse <- function(cachesolve) inversecache <<- solvematrix 
        getinverse <- function() inversecache
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}

#one more note to prove changes
cacheSolve <- function(x, ...) {
        inversecache <- x$getinverse()
        if(!is.null(inversecache)) {
                message("getting cached data")
                return(inversecache)
        }
        data <- x$get()
        inversecache <- solve(data, ...)
        x$setinverse(inversecache)
        inversecache
}
