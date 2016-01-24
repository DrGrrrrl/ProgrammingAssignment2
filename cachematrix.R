## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
mat <- NULL
  set <- function(y) {
    x <<- y
    mat <<- NULL
  }
  get <- function() x 
  setinverse <- function(inverse) mat <<- inverse
  getinverse <- function() mat
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
 inverse <- x$getinverse()
 if (!is.null(inverse)) {
   return(inverse)
 }
 getdata <- x$get()
 inv <- solve(getdata)
 x$setinverse(inverse)
 inverse
}
