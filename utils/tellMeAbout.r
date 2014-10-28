# Tell me everything you know about /this/ R object
#
# Idea from http://stackoverflow.com/questions/1177926/r-object-identification
#
# Example usage:
#
# > about("foo")
#  typeof(this)  character 
#  class(this)  character 
#  attributes(this)   
#  names(this)   
#  sapply(this,class)  character 
#  sapply(this,attributes)  NULL 
#
#  str(this)
# chr "foo"
#
#  summary(this)
#   Length     Class      Mode 
#        1 character character 
#
# > about(c(1,2,3))
#  typeof(this)  double 
#  class(this)  numeric 
#  attributes(this)   
#  names(this)   
#  sapply(this,class)  numeric, numeric, numeric 
#  sapply(this,attributes)  NULL, NULL, NULL 
#
#  str(this)
# num [1:3] 1 2 3
#
#  summary(this)
#   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#    1.0     1.5     2.0     2.0     2.5     3.0 
#

about <- function(this) {
    cat(paste("  typeof(this) ", toString(typeof(this)), "\n"))
    cat(paste("  class(this) ", toString(class(this)), "\n"))
    cat(paste("  attributes(this) ", toString(attributes(this)), "\n"))
    cat(paste("  names(this) ", toString(names(this)), "\n"))
    cat(paste("  sapply(this,class) ", toString(sapply(this, class)), "\n"))
    cat(paste("  sapply(this,attributes) ", toString(sapply(this, attributes)), "\n"))
    cat("\n")
    cat("  str(this)\n")
    str(this)
    cat("\n")    
    cat("  summary(this)\n")
    summary(this)    
}
