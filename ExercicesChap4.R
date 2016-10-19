##Exercices Chap 4.
# Les variables 
### 

### La fonction DIM
        ## Si la fonction dim de R est appliquée à un vecteur, elle renvoie NULL. Si elle est appliquée
        # à une matrice de taille n x m (et si le tableau est de taille supérieure, la fonction renvoie
        # l'ensemble de ses dimensions). Écrire une fonction DIM qui renvoie la taille du vecteur entré 
        # en argument (si l'argument est un vecteur) et la valeur habituelle de dim sinon. 

dim_mod<- function(x){
        if(is.matrix(x)==TRUE){
             dim(x)   
        }else{
        length(x)        
        }
}

## Faisons le test: 
x<- matrix(1:9,3,3)
dim_mod(x) #devrait donner [1] 3 3
y<- as.vector(1:5)
dim_mod(y) #devrait donner [1] 5

# C'EST RÉUSSI! :) 


### Dernier élément
        ## Écrire une fonction qui teste le type de l'argument. Si celui-ci est un vecteur, la fonction 
        # renvoie le dernier élément. Si celui-ci est une matrice, la fonction renvoie le dernier élément
        # de la première ligne. 

dernier_element<- function(x){
        if(is.matrix(x)==TRUE){
                l<- dim(x)
                long<- l[2]
                result<- x[1,long]
                result
        } else {
                long<- length(x)
                result<- x[long]
                result
        }
}

## TESTONS LE TOUT! 
dernier_element(x) #devrait donner [1] 7 
dernier_element(y) #devrait donner [1] 5

# VOILÀ C'EST FAIT! 

