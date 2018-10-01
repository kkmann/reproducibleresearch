mrcbsu_report_odt <- function(...) {

    # get the locations of resource files located within the package
    template <- system.file("rmarkdown/templates/mrcbsu_report_odt/resources/mrcbsu_report_odt_template.fodt", package = "MRCBSUReport")

    # call the base html_document function
    base <- rmarkdown::odt_document(
        ...,
        template = template
    )

    base$knitr$opts_chunk$prompt     <- FALSE
    base$knitr$opts_chunk$comment    <- NA
    base$knitr$opts_chunk$highlight  <- TRUE
    base$knitr$opts_chunk$echo       <- FALSE
    base$knitr$opts_chunk$dpi        <- 300 # printing quality

    base$knitr$opts_chunk$dev.args   <- list(pointsize = 10)
    base$knitr$opts_chunk$fig.width  <- 7
    base$knitr$opts_chunk$fig.height <- 4

    return(base)
}
