grepRows <- function(frame,forThis) {
    #
    # grep for "forThis" in each row of a frame and print counts
    #
    # Args:
    #   frame: the frame
    #   forThis: grep for this
    #
    # Returns:
    #   None.

    for (name in names(frame)) {cat(sprintf("name is %s, matches is %d\n",name,length(grep(forThis,frame[[name]]))))}
}
