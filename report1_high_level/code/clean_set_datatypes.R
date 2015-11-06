
#### name:fit_baseline_model ####
# create a drought variable for each category
# ie pre-calculated Drought by Age, Sex and Rural/Urban Region terms, constructed to have the value of the drought index in the specified groups (with Ages grouped by 20 year age brackets) and zero otherwise.
# NOTE that we initially fitted this model with a drought effect in each 10 year age bracket, however the 20 year age brackets give essentially the same results, and is simpler to calculate.
  
require(mgcv)
require(splines)

# Log transform drought variable, see data preparation for that diagnostic
data$logDroughtCount = log1p(data$avcount)

# set up the formats of these variables
data$time=as.Date(paste(data$dthyy,data$dthmm,1,sep='-'))
data$dthmm=as.factor(data$dthmm)
data$mm=as.numeric(data$dthmm)

# set up timevar for sinusoidal want
timevar <- as.data.frame(names(table(data$time)))
index <- 1:length(names(table(data$time)))
timevar$time2 <- index/ (length(index) / (length(index)/12))
names(timevar) <- c('time','timevar')
timevar$time <- as.Date(timevar$time)
data <- merge(data,timevar)
data$time <- as.numeric(data$time)
data$agegp <- as.factor(data$agegp)
data$sd_group <- as.factor(data$sd_group)
str(data)


data$rural <-ifelse(data$sd_group %in% c('Central West','Mid-North Coast','Murray','Murrumbidgee','North and Far Western','Northern','Richmond-Tweed','South Eastern'), 1, 0)
  
data$agegp2 <-ifelse(data$agegp %in% c('10_19','20_29'), '10_29',
ifelse(data$agegp %in% c('30_39','40_49'), '30_49',
ifelse(data$agegp %in% c('50_59','60_69','70plus'), '50plus',
0)))
  
data$agegp2 <- as.factor(data$agegp2)
  
ages <- c('10_19','20_29','30_39','40_49','50_59','60_69','70plus')
ages2 <- c('10_29','30_49','50plus')
  
# step thru each
## for(sexs in 1:2){
## # sexs <- c(2)#,2)
## if(sexs == 1) {sexid <- 'Males'} else {sexid <- 'Females'}
## #sexid <- c('Females')#,'Females')
## for(rural in 0:1){
## # rural <- c(1)#,0)
## if(rural == 0) {ruralid <- c('urban')} else {ruralid<-'rural'} #,'urban')
  
## cat(
## paste(
## 'data$Drt',sexid,ages2,ruralid,' <- ifelse(data$agegp2 == ',ages2,' & data$sex == ',sexs,' & data$rural == ',rural,', data$logDroughtCount, 0)',
## collapse = '
## ',sep='')
## )
## cat('
  
## ')
## }
  
## }
  
# need to add ' to each agegp
data$DrtMales10_29urban <- ifelse(data$agegp2 == '10_29' & data$sex == 1 & data$rural == 0, data$logDroughtCount, 0)
data$DrtMales30_49urban <- ifelse(data$agegp2 == '30_49' & data$sex == 1 & data$rural == 0, data$logDroughtCount, 0)
data$DrtMales50plusurban <- ifelse(data$agegp2 == '50plus' & data$sex == 1 & data$rural == 0, data$logDroughtCount, 0)
  
data$DrtMales10_29rural <- ifelse(data$agegp2 == '10_29' & data$sex == 1 & data$rural == 1, data$logDroughtCount, 0)
data$DrtMales30_49rural <- ifelse(data$agegp2 == '30_49' & data$sex == 1 & data$rural == 1, data$logDroughtCount, 0)
data$DrtMales50plusrural <- ifelse(data$agegp2 == '50plus' & data$sex == 1 & data$rural == 1, data$logDroughtCount, 0)
  
data$DrtFemales10_29urban <- ifelse(data$agegp2 == '10_29' & data$sex == 2 & data$rural == 0, data$logDroughtCount, 0)
data$DrtFemales30_49urban <- ifelse(data$agegp2 == '30_49' & data$sex == 2 & data$rural == 0, data$logDroughtCount, 0)
data$DrtFemales50plusurban <- ifelse(data$agegp2 == '50plus' & data$sex == 2 & data$rural == 0, data$logDroughtCount, 0)
  
data$DrtFemales10_29rural <- ifelse(data$agegp2 == '10_29' & data$sex == 2 & data$rural == 1, data$logDroughtCount, 0)
data$DrtFemales30_49rural <- ifelse(data$agegp2 == '30_49' & data$sex == 2 & data$rural == 1, data$logDroughtCount, 0)
data$DrtFemales50plusrural <- ifelse(data$agegp2 == '50plus' & data$sex == 2 & data$rural == 1, data$logDroughtCount, 0)
