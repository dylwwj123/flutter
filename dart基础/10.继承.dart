void main(){
  Web w = new Web("lbc",30,"男");
  w.printInfo();
  w.run();
}

class Person1 {
  String name = "wws";
  int age = 20;

  Person1(this.name,this.age);

  void printInfo(){
    print("${this.name}--${this.age}");
  }
}

class Web extends Person1 {
  String sex;
  Web(String name, int age, String sex) : super(name, age) {
    this.sex = sex;
  }
  run(){
    print("${this.name}--${this.age}--${this.sex}");
  }
  //重写父类方法
  @override
  void printInfo(){
    print("重写 ${this.name}--${this.age}");
  }
}