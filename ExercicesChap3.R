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


rm(x1,x2,x3,x4,y1,y2,y3,y4,factorielle)
## FIN DE LA FONCTION FACTORIELLE --------------------------------------------------------

## La constante d'Euler
        # La constante d'Euler est la limite lorsque n tend vers l'infini de la somme de k à n 
        # de 1/k -log(n). Cette constante est approximativement égale à 0,5772157

        #Écrire une fonction permettant de calculer la valeur de la somme de k à n 
        # de 1/k -log(n) à un ordre n entré en argument en utilisant la fonction log() pour le calcul du logarithme.

  Constante_dEuler<- function(n){
        x<- 0 
        
        for(i in 1:n){
                x<- x+ ((1/i))
        }
        x<- x-log(n)
        x
  }
        # Plus n est grand, plus le résultat doit se rapprocher de 0,5772157
        Constante_dEuler(1)
        Constante_dEuler(10)
        Constante_dEuler(100)
        Constante_dEuler(200)

rm(Constante_dEuler)                
## FIN DE LA CONSTANTE D'EULER--------------------------------------------------------------
        
## Les suites arithmético-géométriques
        # Une suite arithmético-géométrique de valeur initiale u0 et de paramètres a et b est définie
        # par la relation de récurrence. U0=u0, U(n+1)=aUn +b
        #Écrire une fonction qui prend en premier paramètre l'entier n, puis les valeurs de a, b et u0
        # en mettant pour valeurs par défaut: a=1, b=0 et u0=1

suite_a_g<- function(n, a=1, b=0, u0=1){
        suite<- as.vector(NULL)
        U_n<- u0
        for(i in 1:n){
                
           U_n<- (a*U_n) +b     
        suite<- rbind(suite, U_n[1])        
        }
        suite[,1]        
        }

suite_a_g(n=10, a=2, b=1, u0=2)

rm(suite_a_g)
## FIN DE LES SUITES ARITHMÉTICO-GÉOMÉTRIQUES-----------------------------------------------

## La suite de Fibonacci 
        #La suite de Fibonacci de valeur initiale u0 et u1 est définie par la relation de récurrence
        # U0=u0
        # U1=u1
        # Un+2= Un+1 + Un
        
Fibonnaci<- function(n,u0=0,u1=1){
        x<- as.vector(c(u1))
        y<- u0
        z<- u1
        for(i in 1:n){
                w<- y+z
                y<-z
                z<- w
                x<-cbind(x,w[1])
        }
        
        
        x[1,]
}

Fibonnaci(10)
Fibonnaci(25, u0=3, u1=4)


rm(Fibonnaci)
### FIN DES EXERCICES DU CHAPITRE 3