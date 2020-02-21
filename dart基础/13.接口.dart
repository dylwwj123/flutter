void main(){
  C c1 = new C();
  print(c1.name);
  c1.printA();
  c1.printB();
}

abstract class A {
  String name;
  printA();
}

abstract class B {
  printB();
}

class C implements A,B {
  @override
  String name;

  @override
  printA() {
    print("aaa");
  }

  @override
  printB() {
    print("bbb");
  }
  
}