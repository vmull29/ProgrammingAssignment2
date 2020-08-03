## This program conducts matrix inversion by storing values in a theoretical matrix and caching them in order to obtain the inverse

##  This function creates a matrix that can be cached to find the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y){
                x<<- y
                inv <<- NULL
        }
        get<- function() x
        setInv <- fucntion(inverse) inv <<- inverse
        getInv <- function() inv
        list(set = set, 
            get = get,
            setInv = setInv,
            getInv = getInv)
}


## This functions calculates the inverse of the matrix created by the makeCacheMatrix function

cacheSolve <- function(x, ...) {
        inv <-x$getInv()
        if(!is.null(inv)){
                message("getting cached data")
                return(inv)
         }
        mat <- x$get()
        inv <- solve(mat,...)
        x$setInv(inv) 
        inv
}
