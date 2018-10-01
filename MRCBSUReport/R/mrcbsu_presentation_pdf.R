mrcbsu_presentation_pdf <- function(...) {

    # get the locations of resource files located within the package
    template <- system.file("rmarkdown/templates/mrcbsu_presentation_pdf/resources/mrcbsu_presentation_pdf_template.tex", package = "MRCBSUReport")

    base <- rmarkdown::beamer_presentation(
        ...,
        template = template
    )

    base$knitr$opts_chunk$prompt     <- FALSE
    base$knitr$opts_chunk$comment    <- NA
    base$knitr$opts_chunk$highlight  <- TRUE
    base$knitr$opts_chunk$echo       <- FALSE
    # base$knitr$opts_chunk$dpi        <- 150 # printing quality
    #base$knitr$opts_chunk$fig.pos    <- 'H' #'!htbp'
    #base$knitr$opts_chunk$out.extra  <- '' # ensures latex code for figure

    base$knitr$opts_chunk$dev.args   <- list(pointsize = 5)
    base$knitr$opts_chunk$fig.width  <- 4.5
    base$knitr$opts_chunk$fig.height <- 2.5

    return(base)

}
