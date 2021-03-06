% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/main.R
\name{LAHV}
\alias{LAHV}
\title{Leaf Area Height Volume metric}
\usage{
LAHV(lad_profile, LAI.weighting = FALSE, height.weighting = FALSE)
}
\arguments{
\item{lad_profile}{output of the lad.profile function}

\item{LAI.weighting}{boolean, define if LAVH should be weighted by total LAI. default FALSE}

\item{height.weighting}{boolean, define if LAVH should be weighted by the max height. default FALSE}
}
\description{
LAVH can be weighted by total LAI or max.height
}
\examples{
# Get the example laz file
normlas.file = system.file("extdata", "lidar_example.laz", package="leafR")

# Calculate LAD from voxelization
VOXELS_LAD = lad.voxels(normlas.file,
                        grain.size = 2)

# Calculate the LAD profile
lad_profile = lad.profile(VOXELS_LAD)

LAHV(lad_profile, LAI.weighting = FALSE, height.weighting = FALSE)
LAHV(lad_profile, LAI.weighting = TRUE, height.weighting = FALSE)
LAHV(lad_profile, LAI.weighting = FALSE, height.weighting = TRUE)
LAHV(lad_profile, LAI.weighting = TRUE, height.weighting = TRUE)

}
