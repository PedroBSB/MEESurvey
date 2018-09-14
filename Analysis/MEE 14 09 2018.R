library(tidyverse)
library(lavaan.survey)
library(lavaan)
library(semTools)
library(survey)
library(semPlot)
library(mice)
#### Imputation

df <- readxl::read_xlsx("Data\\resultados_finais_peso.xlsx")
vars<-c("QA4","QC4","QG1","QG2","QG3","QG4","QG5","QG6","QG7","QH4","QC1","QB1","QB2","QB3","QB5","QB6","QB7","QB8","QC7","QI2","QC12","QI8","QJ1","QJ2","QJ3","QJ4","QC2","QC3","QC6","QC9","QC11","QC10","QI10","QE4","QE13","QE1","QE2","QE3","QE5","QE6","QH3","QH5","QI3","QI1","QC13","QD2","QD5","QE12","QE11","QE7","QE8","QE9","QF1","QF2","QF3","QF4","QF5","QF6","QF7","QF8","QF9","QF10","QF11","QD1","QD4","QH1","QH2")
test<-df[,vars]        
test[test == 999] <- NA
test[] <- lapply(test, function(x) as.numeric(as.character(x)))
#test[] <- lapply(test, function(x) factor(x, ordered = TRUE, 
#                                          levels = c("1", "2", "3", "4","5")))

#Imputation
md.pattern(test)
imp <- mice(test,  printFlag = F, seed = 5484)

summary(imp)
df.imp <- complete(imp,1)
anyNA(df.imp)
df.imp<-as.data.frame(df.imp)
save.image("Data\\Imputation.RData")

#Load results
rm(list=ls())
load("Data\\Imputation.RData")


#### Ajustar o modelo, retirando e mudando os indicadores (questões) que Raphael te passou;
df.imp2<-as.data.frame(scale(df.imp))
model1<-"
Habilidades =~ QA4+QG1+QG2+QG3+QG4+QG5+QG6+QG7+QH4+QC1+QI1
Meritocracia =~ QB1+QB2+QB3+QB5+QB6+QB7+QB8+QC7+QC12+QI8
Autonomia =~ QC2+QC3+QC6+QC9+QC10+QC11+QI10+QE4+QC4+QE13
Recursos =~ QE1+QE2+QE3+QE5+QE6+QH3
Relacionamentos =~ QC13+QD2+QD5+QE7+QE8+QE9+QE12+QE11+QF1+QF10+QF4+QF2+QF5+QF3+QF7+QF6+QF9+QF8+QF11+QF10
Resultados =~ QD1+QD4+QH1+QH2+QH5
Resultados ~ Habilidades+Meritocracia+Autonomia+Recursos+Relacionamentos
"

res1<-sem(model1,df.imp2, std.lv = TRUE, fixed.x=TRUE)
df.imp$peso<-as.numeric(df$peso)
df.imp$id<-seq(1,nrow(df.imp))
survey.design <- svydesign(ids=~id, prob=~peso, data=df.imp2)
res.survey1<-lavaan.survey(res1, survey.design)
summary(res.survey1)
write.csv(fitMeasures(res.survey1),"Measures - Modelo 1.csv")

pdf(file='MEE1.pdf', onefile=T, paper='A4r')
semPaths(res.survey1, "model", "estimates",
         style = "lisrel", curve = 0.8, nCharNodes = 0,
         sizeLat = 12, sizeLat2 = 6, title = TRUE,
         mar = c(5, 1, 5, 1), curvePivot = FALSE,
         edge.label.cex = 0.5, residuals=F, intercepts=F,sizeMan=3,sizeMan2=3)
dev.off()


#### Invertendo a escala
df.imp$QC6<-ifelse(df.imp$QC6==1,-5,ifelse(df.imp$QC6==2,-4,ifelse(df.imp$QC6==3,-3,ifelse(df.imp$QC6==4,-2,-1))))*(-1)
df.imp$QE1<-ifelse(df.imp$QE1==1,-5,ifelse(df.imp$QE1==2,-4,ifelse(df.imp$QE1==3,-3,ifelse(df.imp$QE1==4,-2,-1))))*(-1) 
df.imp$QE2 <-ifelse(df.imp$QE2==1,-5,ifelse(df.imp$QE2==2,-4,ifelse(df.imp$QE2==3,-3,ifelse(df.imp$QE2==4,-2,-1))))*(-1)
df.imp$QE3<-ifelse(df.imp$QE3==1,-5,ifelse(df.imp$QE3==2,-4,ifelse(df.imp$QE3==3,-3,ifelse(df.imp$QE3==4,-2,-1))))*(-1)
df.imp$QE4<-ifelse(df.imp$QE4==1,-5,ifelse(df.imp$QE4==2,-4,ifelse(df.imp$QE4==3,-3,ifelse(df.imp$QE4==4,-2,-1))))*(-1)
df.imp$QE5 <-ifelse(df.imp$QE5==1,-5,ifelse(df.imp$QE5==2,-4,ifelse(df.imp$QE5==3,-3,ifelse(df.imp$QE5==4,-2,-1))))*(-1)
df.imp$QE6 <-ifelse(df.imp$QE6==1,-5,ifelse(df.imp$QE6==2,-4,ifelse(df.imp$QE6==3,-3,ifelse(df.imp$QE6==4,-2,-1))))*(-1)
df.imp$QE7<-ifelse(df.imp$QE7==1,-5,ifelse(df.imp$QE7==2,-4,ifelse(df.imp$QE7==3,-3,ifelse(df.imp$QE7==4,-2,-1))))*(-1)
df.imp$QE8<-ifelse(df.imp$QE8==1,-5,ifelse(df.imp$QE8==2,-4,ifelse(df.imp$QE8==3,-3,ifelse(df.imp$QE8==4,-2,-1))))*(-1)
df.imp$QE9<-ifelse(df.imp$QE9==1,-5,ifelse(df.imp$QE9==2,-4,ifelse(df.imp$QE9==3,-3,ifelse(df.imp$QE9==4,-2,-1))))*(-1)
df.imp$QE11<-ifelse(df.imp$QE11==1,-5,ifelse(df.imp$QE11==2,-4,ifelse(df.imp$QE11==3,-3,ifelse(df.imp$QE11==4,-2,-1))))*(-1)
df.imp$QE12 <-ifelse(df.imp$QE12==1,-5,ifelse(df.imp$QE12==2,-4,ifelse(df.imp$QE12==3,-3,ifelse(df.imp$QE12==4,-2,-1))))*(-1)
df.imp2<-as.data.frame(scale(df.imp))

res2<-sem(model1,df.imp2, std.lv = TRUE, fixed.x=TRUE)
df.imp$peso<-as.numeric(df$peso)
df.imp$id<-seq(1,nrow(df.imp2))
survey.design <- svydesign(ids=~id, prob=~peso, data=df.imp)
res.survey2<-lavaan.survey(res2, survey.design)
summary(res.survey2)
write.csv(fitMeasures(res.survey2),"Measures - Modelo 2.csv")

pdf(file='MEE2.pdf', onefile=T, paper='A4r')
semPaths(res.survey2, "model", "estimates",
         style = "lisrel", curve = 0.8, nCharNodes = 0,
         sizeLat = 12, sizeLat2 = 6, title = TRUE,
         mar = c(5, 1, 5, 1), curvePivot = FALSE,
         edge.label.cex = 0.5, residuals=F, intercepts=F,sizeMan=3,sizeMan2=3)
dev.off()











#Modification Index
mi <- modindices(res)
mi[order(mi$mi, decreasing = TRUE), ]


#pdf(file='my_file.pdf', onefile=T, paper='A4r')
pdf("Models.pdf",width=15,height=5)
semPaths(res.survey, "std", "hide")
dev.off() 

semPaths(res.survey, "std", "hide")
semPaths(res.survey, "std", edge.label.cex = 0.5, curvePivot = TRUE)
semPaths(res.survey, as.expression = c("nodes", "edges"), sizeMan = 3, sizeInt = 1,   sizeLat = 4)
semPaths(res.survey, "std", "est", style = "lisrel")

pdf(file='MEE1.pdf', onefile=T, paper='A4r')
semPaths(res.survey, "model", "estimates",
         style = "lisrel", curve = 0.8, nCharNodes = 0,
         sizeLat = 12, sizeLat2 = 6, title = TRUE,
         mar = c(5, 1, 5, 1), curvePivot = FALSE,
         edge.label.cex = 0.5, residuals=F, intercepts=F,sizeMan=3,sizeMan2=3)
dev.off()

semPaths(res.survey, "model", "estimates",
         style = "lisrel", curve = 0.8, nCharNodes = 0,
         sizeLat = 12, sizeLat2 = 6, title = TRUE,
         mar = c(5, 1, 5, 1), curvePivot = FALSE,
         edge.label.cex = 0.5,  pastel = TRUE)

pdf(file='MEE2.pdf', onefile=T, paper='A4r')
semPaths(res.survey, "col", "est", rotation = 2,
         groups = "latents", pastel = TRUE,
         edge.label.cex = 0.5, 
         mar = c(1, 1, 1, 1),layout = "tree", residuals=F, intercepts=F,sizeMan=1,sizeMan2=1)
dev.off()

semPaths(res.survey, "col", "est", rotation = 2,
         groups = "latents", pastel = TRUE,
         edge.label.cex = 0.5, intercepts = TRUE,
         mar = c(1, 1, 1, 1),layout = "tree2", centerLevels = FALSE)

semPaths(res.survey, "col", "est", rotation = 2,
         groups = "latents", pastel = TRUE,
         edge.label.cex = 0.5, intercepts = TRUE,
         mar = c(1, 1, 1, 1),layout = "tree3", optimizeLatRes = TRUE)


semPaths(res.survey, "col", "est", rotation = 2,
         groups = "latents", pastel = TRUE,
         edge.label.cex = 0.5, intercepts = TRUE,
         mar = c(1, 1, 1, 1),layout = "tree3", layoutSplit = TRUE)

layout = "tree3", 
layout = "tree2"

res<-sem(model2,test, missing="fiml", std.lv = TRUE)

test$peso<-as.numeric(df$peso)
test$id<-seq(1,nrow(test))
survey.design <- svydesign(ids=~id, prob=~peso, data=test)

lavaan.survey(res, survey.design)

summary(res)

model3<-"
Habilidades =~ QG1+QG2+QG3+QG4+QG5+QG6+QG7+QH4+QC1
Meritocracia =~ QB1+QB2+QB3+QB5+QB6+QB7+QB8+QC7+QI2+QC12+QI8+QJ1+QJ2+QJ3+QJ4
Autonomia =~ QC2+QC3+QC6+QC9+QC11+QC10+QI10+QE4+QE13
Recursos =~ QE1+QE2+QE3+QE5+QE6+QH3+QH5+QI3+QI1
Relacionamentos =~ QC13+QD2+QD5+QE12+QE11+QE7+QE8+QE9+QF1+QF2+QF3+QF4+QF5+QF6+QF7+QF8+QF9+QF10+QF11
Capacidade ~ Habilidades+Meritocracia+Autonomia+Recursos+Relacionamentos
Capacidade ~ Resultado
Resultado =~ QD1+QD4+QH1+QH2 
"



res<-sem(model,df.imp)



cor<-weightedCorr(x, y, method = "Polychoric"), weights = df$peso, ML = TRUE, fast = TRUE)


survey.design <- svydesign(ids=~intnum, prob=~1, data=ess.dk)

lavaan.survey(lavaan.fit, survey.design,
              estimator=c("MLM", "MLMV", "MLMVS", "WLS", "DWLS", "ML"),
              estimator.gamma=c("default","Yuan-Bentler"))