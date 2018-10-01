mrcbsu_report_pdf <- function(...) {

    # get the locations of resource files located within the package
    template <- system.file("rmarkdown/templates/mrcbsu_report_pdf/resources/mrcbsu_report_pdf_template.tex", package = "MRCBSUReport")

    base <- rmarkdown::pdf_document(
        ...,
        template = template
    )

    base$knitr$opts_chunk$prompt     <- FALSE
    base$knitr$opts_chunk$comment    <- NA
    base$knitr$opts_chunk$highlight  <- TRUE
    base$knitr$opts_chunk$echo       <- FALSE
    base$knitr$opts_chunk$dpi        <- 300 # printing quality
    base$knitr$opts_chunk$fig.pos    <- 'H' #'!htbp'
    base$knitr$opts_chunk$out.extra  <- '' # ensures latex code for figure

    base$knitr$opts_chunk$dev.args   <- list(pointsize = 5)
    base$knitr$opts_chunk$fig.width  <- 7
    base$knitr$opts_chunk$fig.height <- 3

    return(base)
}
