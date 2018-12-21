## This 2 by 2 matrix generates random number based on a given value of x, which represents the mean of a normal distribution

## This creates a matrix. Make sure to assign a value of X (ie. x = 5) before performing the analysis

makeCacheMatrix = function() {
  x = matrix(rnorm(4,x),2,2)
  set = function(h) h <<- x
  inverse = NULL
  get = function() x
  i = NULL
  setinverse = function(i) i <<- solve(x)
  getinverse = function() i
  list (set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## This solves for the inverse

cacheSolve = function(x) {
  Answer = x$getinverse()
  if (!is.null(Answer)) {
    message("getting cached data")
    return(Answer)
  } else {
    data = x$get ()
    j = solve(data)
    x$setinverse(j)
    j
  }
}

git config --global user.email "kenneth_leng@u.nus.edu"
git config --global user.name "Kenneth"