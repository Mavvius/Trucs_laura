## Cette fonction sert a extraire les 10 premiere especes et 
###les mettre dans un tableau #####

dix_premiere_especes <- function(tableau){
  for (indice in 1:ncol(tableau)) {
    
    ### Extraction des valeurs et des noms ### 
    dixpremier <- order(tableau[,indice ], decreasing = T)[1:10] # Les indices des 10 plus abondants de la station
    val_10_premier <- tableau[, indice][dixpremier] # Les valeurs des 10 premier
    nom_10_premier <- rownames(tableau)[dixpremier] # Les noms des 10 premiers
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
  
  return(tableau_fus)
}