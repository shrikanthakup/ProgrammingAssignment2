## Put comments here that give an overall description of what your
## functions do

## 1 solution 

makeCacheMatrix = function(x = matrix()) {
  invx = NULL
  set = function(y) {
    x <<- y
    invx <<- NULL
  }
  get = function() x
  inverseset= function(inverse) inv_x <<-inverse
  inverseget = function() inv_x
  list(set = set, get = get,
       inverseset = inverseset,
       inverseget = inverseget)
}

## 2 solution

cacheSolve = function(x, ...) {
  invx = x$inverseget()
  if (!is.null(invx)) {
    message("getting cached inverse matrix")
    return(invx)
  } else {
    inv_x = solve(x$get())
    x$inverseset(invx)
    return(invx)
  }
