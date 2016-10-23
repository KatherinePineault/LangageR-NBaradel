#### Exercices Chapitre 5 

########### 
# Katherine Pineault
###########

## Une densité 
        # Soit X une variable aléatoire dont la densité est définie par la fonction f. (Voir la fonction
        # du livre). où 1 est la fonction indicatrice (elle vaut 1 si x est dans l'intervalle, 0 sinon).
        # Écrire la fonction f sous R. 

f<- function(x){
        Res<- numeric()
        Resultat<-numeric()
                Resultat<- (1/(sqrt(2*pi)) * (1+x^2) *exp((-tan(x)^2)/2))
        
        lowinterval<- -(pi/2)
        highinterval<- (pi/2)
        
        if(x>highinterval){
                Res<- Resultat*0
        } else{
                if(x<lowinterval){
                Res<- Resultat*0
        } else {
                Res<- Resultat*1
        }}        
                
               return(Res)
}
## Tests
f(1.2)
f(3) #devrait donner 0
f(-3) #devrait donner 0

# ÇA MARCHE! 

## Trier un tableau 
        # On suppose avoir la matrice suivante. 
X<- cbind(c(1,2,1,3,2), c(121,256,842,510,82), c(1,2,3,4,5), c(5,11,2,7,3))
        # Trier la matrice par ordre croissant selon la première colonne et, en cas d'égalité, 
        # selon la deuxième colonne (toujours par ordre croissant).

X<- X[order(X[,1], X[,2]),]


