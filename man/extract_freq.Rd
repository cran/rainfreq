% Generated by roxygen2 (4.0.2): do not edit by hand
\name{extract_freq}
\alias{extract_freq}
\title{Extract rainfall frequency estimates for desired region of the USA}
\usage{
extract_freq(region_name = "se", storm_RP = 100, storm_duration = "24h",
  flag_down_read = TRUE, flag_down_only = FALSE, flag_read_only = FALSE,
  nws_data_path = "")
}
\arguments{
\item{region_name}{region name. choose one of se(southeast), sw(southwest),
mw(midwest), orb(ohio river basin and surrounding areas), hi(hawaii)
and ak(alaska). default is se(southeast). \pkg{rainfreq} regional selection
criterion is currently limited to the 50 states (plus DC).}

\item{storm_RP}{storm return period in years. choose one of 1, 2, 5, 10, 25,
50, 100, 200, 500, 1000. default is 100 years.}

\item{storm_duration}{storm duration in minutes, hours, or days. choose one
of 5m, 10m, 15m, 30m, 60m (in minutes); 2h, 3h, 6h, 12h, 24h, 48h
(in hours); 3d, 4d, 7d, 10d, 30d, 45d, 60d (in days). default is 24h.}

\item{flag_down_read}{flag to indicate both downloading and reading of the
data is desired. default is TRUE.}

\item{flag_down_only}{flag to indicate only downloading of the data is
desired. default is FALSE.}

\item{flag_read_only}{flag to indicate only reading of the data is
desired. default is FALSE. if set to TRUE a valid file path is required.}

\item{nws_data_path}{location of downloaded nws zip files. when
flag_read_only is TRUE it defaults to the working directory}
}
\value{
RasterLayer, if flag_down_only is set to FALSE, NULL otherwise; if
the NWS website is not working a value of 10 is returned
}
\description{
Extract rainfall frequency estimates for desired region of the USA
}
\examples{
\dontrun{
# southeast, 100yr-24hour storm
x_se <- extract_freq()
class(x_se)
print(x_se)
# midwest, 1000yr-48hour storm
x_mw <- extract_freq(region_name = "mw", storm_RP = 1000, storm_duration = "48h")
print(y_se)
# download only, southeast, 100yr-24hour storm
extract_freq(flag_down_read = FALSE, flag_down_only = TRUE)
# read after download, southeast, 100yr-24hour storm
x_se <- extract_freq(flag_down_read = FALSE, flag_read_only = TRUE)
print(x_se)
}
# record rainfall for the usa
data(rain_max_usa)
head(rain_max_usa)
# record rainfall for the world
data(rain_max_world)
head(rain_max_world)
}
\author{
Gopi Goteti
}

