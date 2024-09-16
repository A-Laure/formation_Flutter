

void main() { 


// Exercice 3


// 1. Créez une liste de nombres. 

/*Manuel
List<int> numberList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
print(numberList);
*/

// Auto :

List<int> numbersList = List.generate(10, (index) => index + 1);


//2. Filtrer la liste pour ne conserver que les nombres pairs.
//3. Affichez la liste des nombres pairs.

//SOl 1

print('Solution 1');


List numbersPair = [];

for (var number in numbersList) {

  if (number %2 == 0) {
    numbersPair.add(number);
  }
}

print(numbersPair);
print('');

// SOl 2

print('Solution 2');

List<int> numbersPairs = numbersList.where((number) => number %2 == 0).toList(); 
// ou List<int> numberspairs = numbersList.where((number) => number.isEven).toList(); // renvoi true ou false pour pair 
// ou List<int> numberspairs = numbersList.where((number) => number.isOdd).toList(); r// envoi true ou false pour impair 
print(numbersPairs);
print('');



// SOl 3 : méthode la plus commune
print('Solution 3');

List numbersPair2 = [];

for (var number2 in numbersList) {

  if (number2 %2 == 0) {
      numbersPair2.add(number2);
  }
}

print(numbersPair2);


}
