## The following functions will be used to cache the matrix inverse

## This function creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
        z <- NULL
      set <- function(y) {
             x <<- y
             z <<- NULL

}


## This function computes the inverse of the "special" matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
         z <- x$getInverse()
  if(!is.null(z)){
  message("getting cached data")
  return(z)
  }
  data <- x$get()
  z <- solve(mat,...)
  x$setInverse(z)
  z
}
