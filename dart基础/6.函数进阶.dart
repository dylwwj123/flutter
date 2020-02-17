void main(){
  //箭头函数
  List l1 = ['111','222','333'];
  l1.forEach((value)=>print(value));

  List l2 = [1,2,3,4,5];
  var l2Num = l2.map((value){
    if (value > 2) {
      return value * 2;
    }
    return value;
  });
  print(l2Num.toList());

  var newList = l2.map((value)=>value>2?value*2:value);
  print(newList);

  //匿名函数
  var printMethon1 = (n){
    print(n + 2);
  };
  printMethon1(10);

  //自执行方法
  ((n){
    print(n);
    print("我是自执行方法");
  })(100);

  //递归
  var sum1 = 0;
  fn(n){
    sum1 += n;
    if (n==1) {
      return;
    }
    fn(n-1);
  }

  fn(100);

  print(sum1);

}
