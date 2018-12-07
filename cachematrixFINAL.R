## set matrix, get matrix, set inverse, get inverse


makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set = function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setInverse <-fuction() inv <<- solve(x)
  getInverse <-function() inv
  list (set = get, get = get, 
        setInverse = setInverse, getInverse = getInverse)
    
}


## returns a matrix that is the inverse of 'x'

cacheSolve <- function(x, ...) {
        inv <-x$getInverser()
        if (!is.null(inv)) {
          message ("retrieving cached data")
          return(inv)
        }
        mat <- x$get()
        inv <- solve(mat, ...)
        x$setInverse(inv)
        inv
}


