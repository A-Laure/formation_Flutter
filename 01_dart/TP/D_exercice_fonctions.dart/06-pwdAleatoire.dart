/*
Créez une fonction qui génère un mot de passe aléatoire. Le mot de passe devrait avoir une
longueur donnée en paramètre et contenir des lettres majuscules, des lettres minuscules et
des chiffres. Testez la fonction en générant des mots de passe de différentes longueurs.

1 - on déclare la fonction
2 - on définie les ensembles de caractères (les listes upper, lower, number)
3 - on doit s'assurer de la présence d'au moins 1 carctère de chaque listes maj, min, numb
4 - on doit générer les caractères restantsde manière aléatoire : on complète le mot de passe
    (contenant déjà au moins une maj, une min, un munbavec des caractères aléatoires jusqu'à la longueur demandée
5 - retourner le mot de passe
Bonus - mélanger le mot de passe : permet de renforcer le côté aléatoire
*/

import 'dart:math';

String generatedPwd(int length)
{

//const allowedCharacters = 'azertyuiopqsdfghjklmwxcvbnAZERTYUIOPQSDFGHJKLMWXCVBN0123456789';
//Random random = Random(); // qd on créé un objet, on instancie l'objet
// classe Random (nom obligatoire, non changeable) / nom objet : random (ou autre) = objet Random()

const allowedLower = 'azertyuiopqsdfghjklmwxcvbn'; // de couper en 3, plus simple à comprendre et prendre des éléments ds les 3
const allowedUpper = 'AZERTYUIOPQSDFGHJKLMWXCVBN'; // on est sûr d'avoir au moins 1 des 3 "types"
const allowedNumber = '0123456789'; // pas int car à la fin on récup une chaîne de caractères


String allowedCharacters = allowedLower + allowedUpper + allowedNumber; // on concatène les 3
Random random = Random();

String pwd = ''; // String car chiffres ds une chaîne de caractère

// générer au moins un caractère de chaque type

// Methode 2 on vient sélectionner une maj/min/number au hasard ds la liste upper et on les stocke ds la varaiable pwd

pwd += allowedUpper[random.nextInt(allowedUpper.length)]; // sélectionne entre 0 et 25 un caractère
// on aurait pu écrire : pwd += allowedUpper[random().nextInt(allowedUpper.length)] si on avait pas créé le radom en haut
// équivalent pwd += allowedUpper(15); prend le 15ème caractère
// On fait pareil pour les 2 autres
pwd += allowedLower[random.nextInt(allowedLower.length)]; 
pwd += allowedNumber[random.nextInt(allowedNumber.length)]; 

/* Méthode de loic :
String upper = allowedUpper[random().nextInt(allowedUpper.length)];
String lower = allowedUpper[random().nextInt(allowedUpper.length)];
String number = allowedUpper[random().nextInt(allowedUpper.length)];
pwd = upprt + lower + number;
*/

    for(int i =0; i < length; i++) // length = paramètre saisi ds la main, on veut x longueur de mot de passe
// for(int i = pwd.length; i< length; i++) pour la méthode 2, comme pwd démarre ici à 3 (les 3 pwd +=), il faut 
//.length mais on aurait pu mettre 3 sf si un jour on rajoute une 4ème variable (caractères spéciaux) ce serait 4 dc mieux par length

    {
        int randomIndex = random.nextInt(allowedCharacters.length); 
        pwd += allowedCharacters[randomIndex];
    } 

// pr aller plus loin, on peut rajouter un mélange SHUFFLE

List<String> pwdShuffle = pwd.split('');
pwdShuffle.shuffle(); // chaîne de caractères mélangées
pwd = pwdShuffle.join(''); //qui remet les éléments ensemble

    return pwd;


}



void main()
{

int passwordlength1 = 8;
//int passwordlength2 = 12;

print('Mot de pass 1 : ${generatedPwd(passwordlength1)}');
//print('Mot de pass 1 : ${generatedPwd(passwordlength2)}');
}

