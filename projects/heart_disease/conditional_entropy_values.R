heart_disease = read.csv("heart_disease_health_indicators_BRFSS2015.csv")
install.packages('infotheo')
library(infotheo)
sapply(heart_disease, function(x){condentropy(heart_disease$HeartDiseaseorAttack,x)})

max(heart_disease$BMI)
min(heart_disease$BMI)

heart_disease$BMI_cat = cut(heart_disease$BMI,
    breaks = c(0, 18.5, 24.9, 29.9, 100), labels = c(0,1,2,3))
heart_disease2 = subset(heart_disease, select = -c(BMI))
heart_disease2

cent = list()
for (i in 1:ncol(heart_disease2)){
  for (j in 1:ncol(heart_disease2)){
    cent = append(cent, condentropy(heart_disease2[,i], heart_disease2[,j]))
  }
}

cond_ent = matrix(cent, 
                  nrow=22, 
                  ncol=22, 
                  dimnames = list(colnames(heart_disease2), colnames(heart_disease2)))
cond_ent

write.csv(cond_ent, 'cond_ent.csv')


