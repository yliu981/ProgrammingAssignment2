## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


makeCacheMatrix <- function(x) {
  inverx <- NULL
  #Create Set func
  setMat <- function(matrixval) {
    x <<- matrixval
    inverx <<- NULL
  }
  #Create Get func
  getMat <- function() {x}
  
  #Create setInverse Func
  setInverse <- function(Inverse) inverx <<- Inverse
  getInverse <- function() {inverx}
  list(setMat = setMat, getMat = getMat,
       setInverse = setInverse,
       getInverse = getInverse)
}



## Write a short comment describing this function


cacheSolve <- function(x,...) {
  
  inverx <- x$getInverse()
  if(!is.null(inverx)) {
    message("getting cached data")
    return(inverx)
  }
  data <- x$getMat()
  inverx <- ginv(data)
  x$setInverse(inverx)
  return(inverx)
}

