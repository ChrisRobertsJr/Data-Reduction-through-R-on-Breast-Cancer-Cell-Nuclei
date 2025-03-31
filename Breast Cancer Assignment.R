bcData=read.csv("breast-cancer-wisconsin.csv", header =T)

#Frequency for each category
bc.radius.f = table(bcData$radius)
bc.smoothness.f = table(bcData$smoothness)
bc.concavity.f = table(bcData$concavity)
bc.symmetry.f = table(bcData$symmetry)

#Relative Frequency for each category
bc.radius.rf = (bc.radius.f)/sum(bc.radius.f)*100
bc.smoothness.rf = (bc.smoothness.f)/sum(bc.smoothness.f)*100
bc.concavity.rf = (bc.concavity.f)/sum(bc.concavity.f)*100
bc.symmetry.rf = (bc.symmetry.f)/sum(bc.symmetry.f)*100

#Cumulative Frequency for each category
bc.radius.cf = cumsum(bc.radius.f)
bc.smoothness.cf = cumsum(bc.smoothness.f)
bc.concavity.cf = cumsum(bc.concavity.f)
bc.symmetry.cf= cumsum(bc.symmetry.f)

#Relative Cumulative frequency
bc.radius.crf = (bc.radius.cf)/sum(bc.radius.cf)*100
bc.smoothness.crf = (bc.smoothness.cf)/sum(bc.smoothness.cf)*100
bc.concavity.crf = (bc.concavity.cf)/sum(bc.concavity.cf)*100
bc.symmetry.crf = (bc.symmetry.cf)/sum(bc.symmetry.cf)*100

#Frequency Distribution table for each category
#RADIUS
bc.table = cbind(bc.radius.f,bc.radius.rf,bc.radius.cf,bc.radius.crf)
colnames(bc.table) = c("Radius Frequency", "Radius Rel. Freq.", "Radius Cum. Freq.", "Radius Rel. Cum. Freq.")
write.csv(bc.table, file="Roberts_Radius.csv")

#SMOOTHNESS
bc.table2 = cbind(bc.smoothness.f,bc.smoothness.rf,bc.smoothness.cf,bc.smoothness.crf)
colnames(bc.table2) = c("smoothness Frequency", "smoothness Rel. Freq.", "smoothness Cum. Freq.", "smoothness Rel. Cum. Freq.")
write.csv(bc.table2, file="Roberts_Smoothness.csv")

#CONCAVITY
bc.table3 = cbind(bc.concavity.f,bc.concavity.rf,bc.concavity.cf,bc.concavity.crf)
colnames(bc.table3) = c("concavity Frequency", "concavity Rel. Freq.", "concavity Cum. Freq.", "concavity Rel. Cum. Freq.")
write.csv(bc.table3, file="Roberts_concavity.csv")

#SYMMETRY
bc.table4 = cbind(bc.symmetry.f,bc.symmetry.rf,bc.symmetry.cf,bc.symmetry.crf)
colnames(bc.table4) = c("symmetry Frequency", "symmetry Rel. Freq.", "symmetry Cum. Freq.", "symmetry Rel. Cum. Freq.")
write.csv(bc.table4, file="Roberts_symmetry.csv")
