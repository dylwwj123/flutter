void main(){
  Dog d = new Dog();
  d.eat();
  d.printInfo();

  Cat c = new Cat();
  c.eat();
  c.printInfo();
}

abstract class Animal {
  eat();
  printInfo(){
    print("我是抽象类一个普通方法");
  }
}

class Dog extends Animal {
  @override
  eat() {
    print("小狗吃吃吃");
  }
}

class Cat extends Animal {
  @override
  eat() {
    print("小猫吃吃吃");
  }
}