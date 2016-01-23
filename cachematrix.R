## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
matrix <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function()x 
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() m
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
 inverse <- x$inverse()
 matrix <- x$get()
 inverse <- solve(matrix, ...)
 x$setinverse(inverse)
 inverse
}
