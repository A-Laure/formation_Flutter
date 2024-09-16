void main() {

/* Set<E> class  -> Collection d'objets dans laquelle chaque objet ne peut apparaître qu'une seule fois.
// C'est l'équivalent de List mais sans les doublons


= liste non ordonnée, différence avec les autres, objet unique, on ne peut avoir de doublon (ex liste de pays)

Implemented types

        Iterable<E> Iterable<T> Iterable<T> 

Implementers

        CssClassSet HashSet LinkedHashSet SetBase UnmodifiableSetView 

Available Extensions

        EnumByName IterableExtensions NullableIterableExtensions 


Set()
    Creates an empty Set.
    factory
Set.from(Iterable elements)
    Creates a Set that contains all elements.
    factory
Set.identity()
    Creates an empty identity Set.
    factory
Set.of(Iterable<E> elements)
    Creates a Set from elements.
    factory
Set.unmodifiable(Iterable<E> elements)
    Creates an unmodifiable Set from elements.
    factory

*/

// 1ere façon pour déclarer 
  var sansSet = <String>{'GeeksForGeeks'}; 
   
  // Printing 1ère façon
  print("Sans set: $sansSet");
   
  // Déclaration avec Set
  Set<String> avecSet = {'GeeksForGeeks'};  
   
  // Printing avec Set
  print("Avec set: $avecSet");
}