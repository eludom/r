# Tell me everything you know about /this/ R object
#
# Example usage:
#
# > tellMeAbout("foo")
#   typeof  character 
#   class  character 
#   attributes   
#   names   
#   sapply(this,class)  character 
#   sapply(this,attributes)  NULL
# 
# > tellMeAbout(c(1,2,3))
#   typeof  double 
#   class  numeric 
#   attributes   
#   names   
#   sapply(this,class)  numeric, numeric, numeric 
#   sapply(this,attributes)  NULL, NULL, NULL 
#                                        #
# > tellMeAbout(someComplexObject)
#   ...
#
# > tellMeAbout(someComplexObject)
#   ...

# Idea from http://stackoverflow.com/questions/1177926/r-object-identification

tellMeAbout <- function(this) {
    cat(paste("  typeof ", toString(typeof(this)), "\n"))
    cat(paste("  class ", toString(class(this)), "\n"))
    cat(paste("  attributes ", toString(attributes(this)), "\n"))
    cat(paste("  names ", toString(names(this)), "\n"))
    cat(paste("  sapply(this,class) ", toString(sapply(this, class)), "\n"))
    cat(paste("  sapply(this,attributes) ", toString(sapply(this, attributes)), "\n"))
}
