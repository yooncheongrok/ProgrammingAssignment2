## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  
  setmat <- function(y){
    x <<-y
    inv <<- NULL
  }
  
  getmat <- function() x
  getinv <- function() inv   
  setinv <- function(x, ...) inv <<- solve(x)
  
  list(setmat = setmat , getmat = getmat , setinv = setinv, getinv = getinv )
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  
  inv1 <- x$getinv()
  
  print(inv1)
  if(!is.null(inv1)){
    message("getting cached data")
    return(inv)
  }
  mat <- x$getmat()
  
  x$setinv(mat)
  
  inv
        ## Return a matrix that is the inverse of 'x'
}
