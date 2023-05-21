#STEP 1- Library Setup and data import
library("factoextra")
library("FactoMineR")

Matrix <- read.delim("~/path/to/PAVmatrix.dat")
rownames(Matrix)<-Matrix[,1]
Matrix<-Matrix[,-1]
geneCounts<-rowSums(Matrix)
Matrix2<-cbind(Matrix,geneCounts)
#move any genes that have not found present in any library
Matrix<-subset(Matrix2,geneCounts!=0)

#Next remove any of the clones
#and any genes I know I did a bad job calling based on clone variability
cloneLibIDs <- read.table("~/path/to/cloneLibIDs.dat", quote="\"", comment.char="")
clones<-as.vector(cloneLibIDs$V1)
keepLibIDs<-read.table("~/path/to/libsToKeep_clonesRemoved.dat", quote="\"", comment.char="")
keeps<- as.vector(keepLibIDs$V1)

poorlyCalledGenesInClones <- read.table("~//path/to/poorlyCalledGenesInClones.dat", 
                                        quote="\"", 
                                        comment.char="")
poorGenes<- as.vector(poorlyCalledGenesInClones$V1)

matrixNoClones<-Matrix[!colnames(Matrix) %in% clones]
matrixCleaned<-matrixNoClones[!row.names(matrixNoClones) %in% poorGenes,]
matrixCleaned<-matrixCleaned[colnames(matrixCleaned) %in% keeps]
colnames(matrixCleaned)

#look to see how many genes are called per library.
#exclude those with too few calls

#
colSums(matrixCleaned[1:nrow(matrixCleaned),])
libCounts<-colSums(matrixCleaned[1:nrow(matrixCleaned),])

Matrix2<-rbind(matrixCleaned,libCounts)

y<-nrow(Matrix2)

rownames(Matrix2)[y]<-"libCounts"
tMatrix2<-as.data.frame(t(Matrix2))

hist(tMatrix2$libCounts, breaks = 200)
#find for a good cutoff point to ensure noise is not being analyzed.
hist(tMatrix2$libCounts, breaks = 300, xlim = c(17000,22000), 
     main = "Histogram of Total Number of Present Genes", 
     xlab = "Number of Genes")
hist(tMatrix2$libCounts, breaks = 200, col= 'grey', 
     main= "Present Genes Per Library", 
     sub = 'Red Line- PAV Analysis Inclusion Cutoff',
     xlab="Present Gene Counts")
abline(v=17500, col='red')

#list the libraries that should be removed and keep others
rownames(subset(tMatrix2,libCounts<17500))
excludeLibs<-rownames(subset(tMatrix2,libCounts<17500))
keepLibs<-rownames(subset(tMatrix2,libCounts>=17500))
newMatrix<-as.data.frame(t(subset(tMatrix2, libCounts >= 17500)))


newMatrix<-newMatrix[-nrow(newMatrix),]
write.table(keepLibs,file="path/to/keepLibs_postAnalysis.dat", quote = F, row.names=FALSE, col.names = FALSE, sep = '\t')
write.table(excludeLibs,file="path/to/excludeLibs_postAnalysis", quote = F, row.names=FALSE, col.names = FALSE, sep = '\t')


#SNext step- Descriminant Analysis and Clustering
#Genes are assigned into bins based on their observance across the population
#load in the adegenet library for analysis
install.packages("adegenet")
library("adegenet")

#set seed to produce a consistent results
set.seed(5000)

#look for number of clusters in the PAV data based on observance in the population
grp<-find.clusters(newMatrix,max.n.clust = 10,n.pca = ncol(newMatrix))
table(grp$grp)

#inspect the number of clusters.
dapc1<-dapc(newMatrix,grp$grp,n.pca = ncol(newMatrix))
scatter(dapc1, scree.da=FALSE)
#plot shows core, shell and cloud genes. need to separate to summarize each
classes<-as.data.frame(grp$grp)

#extract gene clusters
#please note that 'cloud' 'shell' and 'core' do not always correspond to classes 1,2,and 3.  
#printing the summaries of each group helps decide which group is which

cloudGenes<-rownames(subset(classes,classes==1))
shellGenes<-rownames(subset(classes,classes==2))
coreGenes<-rownames(subset(classes,classes==3))


cloudMatrix<-newMatrix[cloudGenes,]
shellMatrix<-newMatrix[shellGenes,]
coreMatrix<-newMatrix[coreGenes,]


#extract gene clusters and visualize a distance matrix
install.packages('philentropy')
library(philentropy)
#summarize % gene observance in each grouping
summary(colSums(cloudMatrix)/nrow(cloudMatrix)*100)
summary(colSums(shellMatrix)/nrow(shellMatrix)*100)
summary(colSums(coreMatrix)/nrow(coreMatrix)*100)

#visualize the shell gene distance matrix
# typically distinct clusters should form
shellDistance<-distance(t(shellMatrix), method = 'jaccard')

#do mds on the distance matrix
fit <- cmdscale(shellDistance, eig = TRUE, k = 2)
mdsVar<- round(fit$eig/sum(fit$eig)*100,1)

#extract x and y points to plot
x <- fit$points[, 1]
y <- fit$points[, 2]
#plot and color using using groupings obtained by kmeans clustering
plot(x,y, pch=19, main="Zostera PanGenome Shell Genes-MDS Plot")

write.table(cloudMatrix,file = "~/path/to/cloudMatrix.dat", sep = "\t")
write.table(shellMatrix,file = "~/path/to/shellMatrix", sep = "\t")
write.table(coreMatrix,file = "~/path/to/coreMatrix", sep = "\t")
