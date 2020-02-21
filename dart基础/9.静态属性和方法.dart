void main(){
  Person.name = "123";
  Person.printName();

  Person p1 = new Person(10,20);
  p1..age = 30
    ..jjj = 40
    ..printName1();
}

class Person{
  static String name;
  int age;
  int jjj;
  
  Person(this.age,this.jjj);

  static void printName(){
    print(name);
  }
  
  void printName1(){
    print("${this.age}--${this.jjj}");
  }
}