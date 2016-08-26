## makeCachematrix Creates a matrix, inverts it, and caches it outside of the function environment. 
## cacheSolve then checks the cache and prints the result if there's an inverse, otherwise it performs the operation.

makeCacheMatrix <- function(x = matrix()) {
        
        cacheM <<- solve(x)
        
        
}


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        if (!is.null(cacheM)) {
                message("getting cached data")
                return(cacheM)
        } else {
        solve(x)
        }
}