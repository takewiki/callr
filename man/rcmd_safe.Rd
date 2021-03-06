% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rcmd.R
\name{rcmd_safe_env}
\alias{rcmd_safe_env}
\title{\code{rcmd_safe_env} returns a set of environment variables that are
more appropriate for \code{\link[=rcmd_safe]{rcmd_safe()}}. It is exported to allow manipulating
these variables (e.g. add an extra one), before passing them to the
\code{\link[=rcmd]{rcmd()}} functions.}
\usage{
rcmd_safe_env()
}
\value{
A named character vector of environment variables.
}
\description{
It currently has the following variables:
\itemize{
\item \code{CYGWIN="nodosfilewarning"}: On Windows, do not warn about MS-DOS
style file names.
\item \code{R_TESTS=""} This variable is set by \verb{R CMD check}, and makes the
child R process load a startup file at startup, from the current
working directory, that is assumed to be the \verb{/test} directory
of the package being checked. If the current working directory is
changed to something else (as it typically is by \code{testthat}, then R
cannot start. Setting it to the empty string ensures that \code{callr} can
be used from unit tests.
\item \code{R_BROWSER="false"}: typically we don't want to start up a browser
from the child R process.
\item \code{R_PDFVIEWER="false"}: similarly for the PDF viewer.
}

\if{html}{\out{<link rel="stylesheet" type="text/css" href="../doc/assets/extra.css">}}

\if{html}{\out{<script src="../doc/assets/rd.js"></script>}}
}
\details{
Note that \code{callr} also sets the \code{R_ENVIRON}, \code{R_ENVIRON_USER},
\code{R_PROFILE} and \code{R_PROFILE_USER} environment variables
appropriately, unless these are set by the user in the \code{env} argument
of the \code{r}, etc. calls.
}
