void main() {
  //调用外部方法
  methon1();

  //内嵌方法
  int getNum(){
    var num = 123;
    return num;
  }
  var num = getNum();
  print(num);

  var str1 = printString();
  print(str1);
  
  var num1 = numAdd(101);
  print(num1);

  var user1 = printUser("wws", 20);
  print(user1);

  var user2 = printUser1("wws");
  print(user2);
}

void methon1(){
  print("methon1");
}

String printString(){
  return "this is str";
}

int numAdd(int num){
  int add = 0;
  for (var i = 1; i < num; i++) {
    add = add + i;
  }
  return add;
}

//可选参数方法
String printUser(String username,[int age]){
  return "$username -- $age";
}

//默认参数
String printUser1(String username,[int age = 10]){
  return "$username -- $age";
}
