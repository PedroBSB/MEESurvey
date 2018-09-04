library(lavaan)
library(semTools)
model<-"
 Habilidades <~ QG1+QG2+QG3+QG4+QG5+QG6+QG7+QH4+QC1
 Meritocracia <~ QB1+QB2+QB3+QB5+QB6+QB7+QB8+QC7+QI2+QC12+QI8+QJ1+QJ2+QJ3+QJ4
 Autonomia <~ QC2+QC3+QC6+QC9+QC11+QC10+QI10+QE4+QE13
 Recursos <~ QE1+QE2+QE3+QE5+QE6+QH3+QH5+QI3+QI1
 Relacionamentos <~ QC13+QD2+QD5+QE12+QE11+QE7+QE8+QE9+QF1+QF2+QF3+QF4+QF5+QF6+QF7+QF8+QF9+QF10+QF11
 Resultado ~ Habilidades+Meritocracia+Autonomia+Recursos+Relacionamentos
 Resultado <~ QD1+QD4+QH1+QH2 
"

res<-sem(model,test, missing="FIML")



library(mice)
md.pattern(test)
imp <- mice(test)
imp
summary(imp)