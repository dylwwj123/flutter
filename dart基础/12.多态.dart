//多态就是父类定义一个方法不去实现，让继承他的子类去实现，每个子类都有不同的表现。
void main(){
  Animal d = new Dog();
  d.eat();
  // d.run();

  Cat c = new Cat();
  c.eat();
}

abstract class Animal {
  eat();
}

class Dog extends Animal {
  @override
  eat() {
    print("小狗吃吃吃");
  }
  run() {
    print("不是抽象类里的方法");
  }
}

class Cat extends Animal {
  @override
  eat() {
    print("小猫吃吃吃");
  }
  run() {
    print("不是抽象类里的方法");
  }
}