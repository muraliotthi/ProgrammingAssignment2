## Put comments here that give an overall description of what your
## functions do


## This function return a list of function objects that 
## will be used later to get a matrix and change an existing matrix
## in an object.

makeCacheMatrix<-function(m=matrix()){
  invMatrix <- NULL
  getMatrix<-function() m
  setMatrix <- function(n) {
            m<<-n
   invMatrix<<-NULL
     }

       setInverseMatrix <- function(invM) {
           invMatrix <<-invM
       invMatrix
        }
  getInverseMatrix <- function() invMatrix
    list(getMatrix = getMatrix,
           setInverseMatrix = setInverseMatrix,
          getInverseMatrix=getInverseMatrix,
         setMatrix=setMatrix)

 }
 

## This function will return caches and returns inverse of a matrix.

cacheSolve = function(m, ...){
  invM <-m$getInverseMatrix()
    if (is.null(invM)) {
             print("Not available in cache")
             m$setInverseMatrix(solve(m$getMatrix()))
          }
       else {
                print("From cache")
        invM
     }
       }



