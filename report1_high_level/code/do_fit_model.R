
######################
#do,  The final drought model estimates by age, sex and region
######################
# fit the GLM with recommended df
strt=Sys.time()
interactionDrtAgeSexRuralModel3 <- glm(deaths ~ sin(timevar*2*pi) + cos(timevar*2*pi)
+ tmax_anomaly
+ DrtMales10_29rural
+ DrtMales30_49rural
+ DrtMales50plusrural
+ DrtFemales10_29rural
+ DrtFemales30_49rural
+ ns(DrtFemales50plusrural, df = 5)
+ ns(DrtMales10_29urban, df = 6)
+ DrtMales30_49urban
+ ns(DrtMales50plusurban, df = 4)
+ DrtFemales10_29urban
+ ns(DrtFemales30_49urban, df = 3)
+ DrtFemales50plusurban
+ agegp2
+ rural
+ sd_group
+ sex
+ agegp
+ agegp*sex*ns(time,3)
+ offset(log(pop)), data=data,family=poisson)
#save.image()
endd=Sys.time()
print(endd-strt)

summary(interactionDrtAgeSexRuralModel3)
#Rsquared.glm.gsm(interactionDrtAgeSexRuralModel3)
