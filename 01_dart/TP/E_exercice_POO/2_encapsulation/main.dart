/*
Encapsulation : permet de protéger mon code par rapport à un autre développeur, "empêche" l'accés direct que ce soit par
                inadvertance ou exprès.

elmt privé : on n'a pas accés direct, faut faire appel à une méthode

  - double _balance -> on ajoute l "_" devant (partout)
  -  privé ne marche pas seulement qd ds un autre fichier 
  - on fera un getter dans le fichier source qui renvoie la valeur (ex de la balance) : double get balance => _balance permet d'empêcher 
    l'écrasement de la donnée
  - un setter : (à revalider) donne la méthode correcte à suivre : double set balance(double amount) ... voir ci-dessous exo


*/