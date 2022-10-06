## creates a special matrix object that can cache its inverse.

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    inverseMat <- NULL
    ## sets cache to NULL
    setMat <- function(y){
        x <<- y
        m <<- NULL
        ##resets x to new value if set is called
        
    }
    getMat <- function() x
    ## returns the matrix passed to makeChacheMatrix
    cacheMat <- function(invert) inverseMat <<- invert
    ## caches the invert
    getInverseMat <- function() inverseMat
    ## returns the inverse matrix
    list(setMat = setMat, getMat = getMat, cacheMat = cacheMat, 
         getInverseMat = getInverseMat)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    inverseMat <- x$getInverseMat()
    if(!is.null(inverseMat)) {
        message("returning cached inverse")
        return(inverseMat)
        ## checks if there is a cached value available
    }
    dataSet <- x$getMat()
    inverseMat <- solve(dataSet)
    x$cacheMat(inverseMat)
    inverseMat
        ## Returns a matrix that is the inverse of 'x'
    
}
