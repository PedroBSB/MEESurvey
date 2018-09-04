library(tidyverse)
library(mice)
library(wCorr)
library(lavaan.survey)
library(survey)
df <- readxl::read_xlsx("Data\\resultados_finais_peso.xlsx")
vars<-c("QG1","QG2","QG3","QG4","QG5","QG6","QG7","QH4","QC1","QB1","QB2","QB3","QB5","QB6","QB7","QB8","QC7","QI2","QC12","QI8","QJ1","QJ2","QJ3","QJ4","QC2","QC3","QC6","QC9","QC11","QC10","QI10","QE4","QE13","QE1","QE2","QE3","QE5","QE6","QH3","QH5","QI3","QI1","QC13","QD2","QD5","QE12","QE11","QE7","QE8","QE9","QF1","QF2","QF3","QF4","QF5","QF6","QF7","QF8","QF9","QF10","QF11","QD1","QD4","QH1","QH2")
test<-df[,vars]        
test[test == 999] <- NA
test[] <- lapply(test, function(x) as.numeric(as.character(x)))
test[] <- lapply(test, function(x) factor(x, ordered = TRUE, 
                                          levels = c("1", "2", "3", "4","5")))

#Imputation
md.pattern(test)
imp <- mice(test,  printFlag = F, seed = 5484)
save.image("Data\\Imputation.RData")
summary(imp)
cor<-weightedCorr(x, y, method = "Polychoric"), weights = df$peso, ML = TRUE, fast = TRUE)


survey.design <- svydesign(ids=~intnum, prob=~1, data=ess.dk)

lavaan.survey(lavaan.fit, survey.design,
              estimator=c("MLM", "MLMV", "MLMVS", "WLS", "DWLS", "ML"),
              estimator.gamma=c("default","Yuan-Bentler"))