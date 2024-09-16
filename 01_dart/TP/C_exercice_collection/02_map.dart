void main() {  

// Exercice 2

// 1. Créez une map représentant un dictionnaire de mots et de leurs significations.

Map<String, String> motDefinition = {
    "Arbre": "Grand végétal",
    "Fleur": "Production délicate souvent odorante",
    "Bois": "Espace de terrain couvert d'arbres",
    "Tige": "Partie rallongée des plantes",
    
};
   print(motDefinition);
   print('');
// 2. Ajoutez un nouveau mot à la map.

print('Je rajoute un mot (key) et une définition (value) à la map :');
print('');
motDefinition['Plante'] = 'Végétal à racine';
print(motDefinition);
print('');
/* Ma solution

motDefinition.addEntries([
  MapEntry('Plante', 'Végétal à racine')
]);
  print(motDefinition);
*/

// 3. Modifiez la signification d'un mot existant.
print('Je change la définition de l\'arbre :');
print('');
motDefinition['arbre'] = 'gros truc';
print(motDefinition);

/* ou 
motDefinition.forEach((key, value) ==> print($key, $ value)); 
*/

/* Ma solution
motDefinition.update('Arbre', (value) => "Toto");
  print(motDefinition);

//values.update("c", (value) => "Mouse");
*/










// 4. Affichez tous les mots et leurs significations.
motDefinition.forEach((mot, definition) =>
      print("Mot : ${mot.toUpperCase()}, Définition : $definition ")
          );



}