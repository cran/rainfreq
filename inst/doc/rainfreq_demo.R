### R code from vignette source 'rainfreq_demo.Rnw'

###################################################
### code chunk number 1: rainfreq_demo.Rnw:24-29
###################################################
require(rainfreq)
require(RCurl)
require(SDMTools)
require(raster)
require(maps)


###################################################
### code chunk number 2: rainfreq_demo.Rnw:34-36
###################################################
x_se <- extract_freq()
print(x_se)


###################################################
### code chunk number 3: rainfreq_demo.Rnw:41-43
###################################################
x_mw <- extract_freq(region_name = "mw", storm_RP = 1000, storm_duration = "48h")
print(x_mw)


###################################################
### code chunk number 4: rainfreq_demo.Rnw:48-50
###################################################
x_hi <- extract_freq(region_name = "hi", storm_RP = 10, storm_duration = "6h")
print(x_hi)


###################################################
### code chunk number 5: rainfreq_demo.Rnw:55-59
###################################################
data(rain_max_usa)
head(rain_max_usa)
data(rain_max_world)
head(rain_max_world)


###################################################
### code chunk number 6: rainfreq_demo.Rnw:68-71
###################################################
x_se <- x_se * 0.001
x_mw <- x_mw * 0.001
x_hi <- x_hi * 0.001


###################################################
### code chunk number 7: rainfreq_demo.Rnw:76-93 (eval = FALSE)
###################################################
## # southeast
## plot(x_se, breaks = c(6, 9, 12, 15, 18), 
##      col = c("red", "yellow", "green", "blue"), 
##      main = "100-year 24-hour Rainfall for Southeast USA (inches)")
## map('state', region = c('florida', 'arkansas', 'louisiana', 'mississippi', 
##                         'alabama', 'georgia'), add = TRUE)
## # midwest
## plot(x_mw, breaks = c(2, 5, 10, 15, 20), 
##      col = c("red", "yellow", "green", "blue"),
##      main = "1000-year 48-hour Rainfall for Midwest USA (inches)")
## map('state', region = c('colorado', 'north dakota', 'south dakota', 'nebraska', 
##                         'oklahoma', 'minnesota', 'iowa', 'missouri', 
##                         'wisconsin', 'michigan'), add = TRUE)
## # hawaii
## plot(x_hi, breaks = c(1, 3, 6, 9, 12), 
##      col = c("red", "yellow", "green", "blue"),
##      main = "10-year 6-hour Rainfall for Hawaii (inches)")


###################################################
### code chunk number 8: figx
###################################################
plot(x_se, breaks = c(6, 9, 12, 15, 18), 
     col = c("red", "yellow", "green", "blue"), 
     main = "100-year 24-hour Rainfall for Southeast USA (inches)")
map('state', region = c('florida', 'arkansas', 'louisiana', 'mississippi', 
                        'alabama', 'georgia'), add = TRUE)


###################################################
### code chunk number 9: figy
###################################################
plot(x_mw, breaks = c(2, 5, 10, 15, 20), 
     col = c("red", "yellow", "green", "blue"),
     main = "1000-year 48-hour Rainfall for Midwest USA (inches)")
map('state', region = c('colorado', 'north dakota', 'south dakota', 'nebraska', 
                        'oklahoma', 'minnesota', 'iowa', 'missouri', 
                        'wisconsin', 'michigan'), add = TRUE)


###################################################
### code chunk number 10: figz
###################################################
plot(x_hi, breaks = c(1, 3, 6, 9, 12), 
     col = c("red", "yellow", "green", "blue"),
     main = "10-year 6-hour Rainfall for Hawaii (inches)")


