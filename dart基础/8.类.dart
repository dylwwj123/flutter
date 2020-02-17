void main(){
  Person p1 = new Person();
  p1.setInfo("wws", 100);
  p1.getInfo();

  Person p2 = new Person("lbc",12);
  p2.getInfo();

  Person p3 = new Person.now("123", 123);
  p3.getInfo();
}

//定义类
class Person {
  String name;
  int age;

  //构造函数
  // Person([String name,int age]) {
  //   this.name = name;
  //   this.age = age;
  // }
  Person([this.name,this.age]);

  //命名构造函数
  Person.now(this.name,this.age);

  void getInfo(){
    print("${this.name} - ${this.age}");
  }

  void setInfo(String name,int age){
    this.name = name;
    this.age = age;
  }
}