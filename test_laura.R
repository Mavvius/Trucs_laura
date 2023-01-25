library("dplyr")
library("tidyr")

dim(tab_nom_sp)

tab_nom_sp <- read.table(file = "C:/Users/aelassim/Documents/Trucs_laura/classeur1.csv", sep = ";", header=TRUE, row.names = 1)
my_data <- read.table(file = "C:/Users/aelassim/Documents/Trucs_laura/classeur1.csv", sep = ";", header=TRUE)


names(my_data)
head(my_data)

my_data[,2]
sort(tab_nom_sp[,1], decreasing = T)[1:10][1]
# How to extract rowname after sort
sort(my_data[,2], decreasing = T)[1:10]


dataframe[ligne ,  colonnes]
vecteur[debut : fin]


nb_col<-length(colnames(tab_nom_sp))
##############################-- Boucle --################################
for (nombre in 1:nb_col) {
  ### Extraction des valeurs et des noms ### 
  col <- colnames(tab_nom_sp)[nombre]
  dixpremier <- order(tab_nom_sp[[col]], decreasing = T)[1:10] # Les indices des 10 plus abondants de la station
  val_10_premier <- tab_nom_sp[[col]][dixpremier] # Les valeurs des 10 premier
  nom_10_premier <- rownames(tab_nom_sp)[dixpremier] # Les noms des 10 premiers
  fusion <- rbind(val_10_premier, nom_10_premier)
  fusion <- data.frame(fusion[1,], row.names = fusion[2,])
  
  ### fusion ###  

  if(nombre == 2 ){
    tableau_fus <- merge( fusion, fusion2, by = 'row.names', all = T)
  }
  if(nombre > 2){
    tableau_fus <- merge( tableau_fus, fusion2, by = 'row.names', all = T)
    
  }
  fusion2 <- fusion
}

##############################-- Fin Boucle --################################

tableau_fusion <- merge(vertical1,vertical1, by = 'row.names', all = T)


rownames(tableau_fusion)
?rbind()
    order(tab_nom_sp$X1, decreasing = T)
lapin <- 32
     
    
group_by(datafr)    
    colnames(tab_nom_sp[1])

my_data[9,1]

# Les indices des 10 éspèces les plus abondantes pour le ce point de prélevement
order(tab_nom_sp$X2, decreasing = T)[1:10]
rownames(tab_nom_sp)[order(tab_nom_sp$X2, decreasing = T)[1:10]]
rownames(x = dataframe)

dixpremier <- order(tab_nom_sp$X1, decreasing = T)[1:10]
point1 <- tab_nom_sp$X1[dixpremier]
fusion1 <- rbind(point1, rownames(tab_nom_sp)[dixpremier])


dixpremier2 <- order(tab_nom_sp$X2, decreasing = T)[1:10]
point2 <- tab_nom_sp$X2[dixpremier2]
fusion2 <- rbind(point2, rownames(tab_nom_sp)[dixpremier2])


dixpremier3 <- order(tab_nom_sp$X3, decreasing = T)[1:10]
point3 <- tab_nom_sp$X3[dixpremier3]
fusion3 <- rbind(point3, rownames(tab_nom_sp)[dixpremier3])
vertical3 <- data.frame(fusion3[1,], row.names = fusion3[2,])

tableau_ultime <- merge(tableau_fusion, vertical3, by.x = 'row.names', by.y = 'row.names' , all = T)



tableau_fusion[[Row.names]] # Ca marche pas !!!
# Soit 
tableau_fusion[[nomcol]] # evalue l'objet
# Soit 
tableau_fusion$Row.names # va me chercher la colonne
nomcol <- 'Row.names'


vecteur[indice]
vect <- 90:100
vect[2]

rownames(vertical1)
vertical1 <- data.frame(fusion1[1,], row.names = fusion1[2,])
vertical2 <- data.frame(fusion2[1,], row.names = fusion2[2,])

colnames(vertical1) == colnames(vertical2)



?intersect
  
?merge

point2 <- 











longtable <- tidyr::pivot_longer(data = my_data, cols = "Espèce" )
tablefin <- slice_min(longtable,n=10, order_by = value)

my_data$X1
getwd()
list.files("C:/Users/aelassim/Documents/Trucs_laura")
read

sort(my_data$X1, decreasing = TRUE)[1:10]

names(my_data)[2]

for(i in 2:17){
  #sort(my_data[i], decreasing = TRUE)
  test <- my_data[,i]
  test <- sort(test, decreasing = TRUE)
}

sort(my_data[,2])
point1 <- my_data %>%
  arrange(x1) 
