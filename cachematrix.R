## The function is going to return the inverse of the prescribe##d matrix

## The function takes on the matrix

makeCacheMatrix <- function(x = matrix()) {
  a <- NULL
  set <- function(y) {
    x <<- y
    a <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) a <<- solve
  getinverse <- function() a
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}




## The function returns the inverse

cacheSolve <- function(x, ...) {
  a <- x$getinverse()
  if(!is.null(a)) {
    message("getting cached data")
    return(a)
  }
  data <- x$get()
  a <- solve (data, ...)
  x$setinverse(a)
  a
}
