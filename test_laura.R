source("C:/Users/aelassim/Documents/Trucs_laura/scripts/dix_premier.R")
source("scripts/dix_premier.R")

list.files("C:/Users/aelassim/Documents/Trucs_laura/scripts")

dim(tab_nom_sp)

#Avec les espèces en header
tab_nom_sp <- read.table(file = "C:/Users/aelassim/Documents/Trucs_laura/classeur1.csv", sep = ";", header=TRUE, row.names = 1)

#Avec les especes qui sont une colonnes
my_data <- read.table(file = "C:/Users/aelassim/Documents/Trucs_laura/classeur1.csv", sep = ";", header=TRUE)


tableau_10_premier <- dix_premiere_especes(tableau = tab_nom_sp)


names(my_data)
head(my_data)

my_data[,2]
sort(tab_nom_sp[,1], decreasing = T)[1:10][1]
# How to extract rowname after sort
sort(my_data[,2], decreasing = T)[1:10]

str(tab_nom_sp[,1])

dataframe[ligne ,  colonnes]
vecteur[debut : fin]

tab_nom_sp <- read.table(file = "C:/Users/aelassim/Documents/Trucs_laura/classeur1.csv", sep = ";", header=TRUE, row.names = 1)

##### Parcourt du tableau par les Noms des colonnes ######

for (names in colnames(tab_nom_sp)){
  ### Extraction des valeurs et des noms ### 
  dixpremier <- order(tab_nom_sp[[names]], decreasing = T)[1:10] # Les indices des 10 plus abondants de la station
  val_10_premier <- tab_nom_sp[[names]][dixpremier] # Les valeurs des 10 premier
  nom_10_premier <- rownames(tab_nom_sp)[dixpremier] # Les noms des 10 premiers
  fusion <- rbind(val_10_premier, nom_10_premier)
  fusion <- data.frame(as.integer(fusion[1,]), row.names = fusion[2,])
  
  ### fusion ###  
  
  if(names == "X2" ){
    tableau_fus <- merge(fusion2, fusion, by = 'row.names', all = T)
    print("ok")
    
  }
  if(names != "X2" && names != "X1"){
    tableau_fus <- merge(tableau_fus, fusion, by.x = 'Row.names', by.y = 'row.names', all = T)
  }
  fusion2 <- fusion  
}



##### Parcourt du tableau par les indices de colonnes #####

for (indice in 1:ncol(tab_nom_sp)) {

  ### Extraction des valeurs et des noms ### 
  dixpremier <- order(tab_nom_sp[,indice ], decreasing = T)[1:10] # Les indices des 10 plus abondants de la station
  val_10_premier <- tab_nom_sp[, indice][dixpremier] # Les valeurs des 10 premier
  nom_10_premier <- rownames(tab_nom_sp)[dixpremier] # Les noms des 10 premiers
  fusion <- rbind(val_10_premier, nom_10_premier)
  fusion <- data.frame(as.integer(fusion[1,]), row.names = fusion[2,])
  
  
  if(indice == 2 ){
    tableau_fus <- merge(fusion2, fusion, by = 'row.names', all = T)

  }
  
  if(indice != 2 && indice != 1){
    tableau_fus <- merge(tableau_fus, fusion, by.x = 'Row.names', by.y = 'row.names', all = T)
  }
  
  fusion2 <- fusion  
}
  

##### Renommer les colonnes #####
ncol(tableau_fus)
names(tableau_fus)[2:ncol(tableau_fus)] <- names(tab_nom_sp)
names(tableau_fus)[1] <- "Espèces"


ncol(tableau_fus)
nom_fonction (argument = valeur, ...){
  
}

multi(chiffre = 56){
  chiffre *2 
  return(chiffre *2 )
}



