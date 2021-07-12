library(lubridate)

upch <- seq(ymd("20141201"), ymd("20161231"), by = "days")
minsa <- seq(ymd("20161014"), ymd("20171231"), by = "days")
minsa_os1 <- seq(ymd("20180119"), ymd("20180217"), by = "days")
minsa_os2 <- seq(ymd("20180221"), ymd("20180411"), by = "days")
minsa_os3 <- seq(ymd("20180418"), ymd("20180517"), by = "days")
unicef <- seq(ymd("20180816"), ymd("20190705"), by = "days")
pcm_os <- seq(ymd("20191126"), ymd("20191231"), by = "days")

length(unique(c(upch, minsa, minsa_os1, minsa_os2, minsa_os3, unicef, pcm_os)))

length(unique(c(minsa, minsa_os1, minsa_os2, minsa_os3, pcm_os)))

ymd(20161231)-ymd(20141201)

ymd(20180517)-ymd(20170101)

ymd(20190705)-ymd(20180816)

###
upch <- seq(ymd("20141201"), ymd("20161231"), by = "days")
minsa <- seq(ymd("20161014"), ymd("20171231"), by = "days")
minsa_os1 <- seq(ymd("20180119"), ymd("20180217"), by = "days")
minsa_os2 <- seq(ymd("20180221"), ymd("20180411"), by = "days")
minsa_os3 <- seq(ymd("20180418"), ymd("20180517"), by = "days")
unicef <- seq(ymd("20180816"), ymd("20190705"), by = "days")
pcm_os <- seq(ymd("20191126"), ymd("20191231"), by = "days")

length(unique(c(upch, minsa, minsa_os1, minsa_os2, minsa_os3, unicef, pcm_os)))

length(unique(c(minsa, minsa_os1, minsa_os2, minsa_os3, pcm_os)))

ymd(20161231)-ymd(20141201)

ymd(20180517)-ymd(20170101)

ymd(20190705)-ymd(20180816)