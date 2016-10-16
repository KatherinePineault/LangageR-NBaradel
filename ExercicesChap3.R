## LANGAGE R (LIVRE DE NICOLAS BARADEL)
## Exercices du Chapitre 3
rm(list = ls())


## La fonction factorielle
        # La fonction factorielle renvoie le produit des n premiers entiers si n>=1 et 1 si n=0, ce nombre
        # est noté !n. Écrire une fonction permettant de calculer la valeur de n! pour tout n>=0. 
        # Pour vérifier sa fonction, on pourra utiliser la fonction de R factorial (vérifier si le cas de 
        # n=0 est bien traité). 

factorielle<- function(n){
        
        if(n==0){
                return(1)
        }else{
        x<- 1
        i<- 1
            while(i <=n){
                x<- x * i 
                i<- i+1
            }
                return(x)         
        }
        
}

# Chacune des paires devraient donner les mêmes résultats
x1<- factorielle(0)
y1<- factorial(0)

x2<- factorielle(1)
y2<- factorial(1)

x3<- factorielle(50)
y3<- factorial(50)

x4<- factorielle(5)
y4<- factorial(5)

## FIN DE LA FONCTION FACTORIELLE --------------------------------------------------------
