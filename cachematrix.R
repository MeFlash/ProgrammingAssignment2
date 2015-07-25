## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        # set value of cache to NULL, if nothing
        cache <- NULL  
        #create matrix       
        set <- function(y) { 
                x <<- y 
                cache <<- NULL
        }
        #get matrix value
        get <- function() x
        #invert
        setmatrix <- function(inverse) cache <<- inverse
        #get inverted from cache
        getmatrix <- function() cache
        
        #put created function in workingspace
        list(set = set, get = get,
                setmatrix = setmatrix,
                getmatrix = getmatrix)
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        #get inverse matrix from cache and print
        cache <- x$getmatrix()
        if(!is.null(cache)) {
                message("getting cached data")
                return(cache)
        }
        #make matrix if needed
        newstuff <- x$getmatrix()
        cache <- solve(newstuff)
        x$setmatrix(cache)
        inv
}

        ## Return a matrix that is the inverse of 'x'

x = rbind(c(2, 6), c(6, 2))
solu = makeCacheMatrix(x)
solu$get()