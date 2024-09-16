class Person {

  String name;
  int year;

  Person(this.name, this.year);


  int calculAge(int yearNow){

    return yearNow - this.year;

  }


}


