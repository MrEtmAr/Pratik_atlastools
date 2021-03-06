% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fun_make_res_patch.R
\name{atl_res_patch}
\alias{atl_res_patch}
\title{Construct residence patches from position data.}
\usage{
atl_res_patch(
  data,
  buffer_radius = 10,
  lim_spat_indep = 100,
  lim_time_indep = 30,
  min_fixes = 3,
  summary_variables = c(),
  summary_functions = c()
)
}
\arguments{
\item{data}{A dataframe of values of any class that is or extends data.frame.
The dataframe must contain at least two spatial coordinates, \code{x} and
\code{y}, and a temporal coordinate, \code{time}. The names of columns
specifying these can be passed as arguments below. The column \code{id}
indicating animal id is \emph{required}.}

\item{buffer_radius}{A numeric value specifying the radius of the buffer to
be considered around each coordinate point. May be thought of as the distance
 that an individual can access, assess, or otherwise cover when at a discrete
  point in space.}

\item{lim_spat_indep}{A numeric value of time in minutes of the time
difference between two patches for them to be considered independent.}

\item{lim_time_indep}{A numeric value of distance in metres of the spatial
distance between two patches for them to the considered independent.}

\item{min_fixes}{The minimum number of fixes for a group of
spatially-proximate number of ponts to be considered a preliminary residence
patch.}

\item{summary_variables}{Optional variables for which patch-wise summary
values are required. To be passed as a character vector.}

\item{summary_functions}{The functions with which to summarise the summary
variables; must return only a single value, such as median, mean etc. To be
passed as a character vector.}
}
\value{
A data.frame extension object. This dataframe has the added column
\code{patch} and \code{patchdata}, indicating the patch identity and the
data used to construct the patch. In addition, there are columns with patch
summary variables.
}
\description{
\code{atl_res_patch} clusters positions into residence patches.
The function expects a specific organisation of the data: there should be
at least the following columns, \code{x}, \code{y}, \code{time}, and
\code{id}, all named in lower case, and corresponding to the coordinates,
timestamp in the UNIX format (seconds since 1970), and the identity of the
tracked individual.
}
