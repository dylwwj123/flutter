void main(){
  //自增自减
  var i1 = 10;
  var i2 = i1++;
  print(i1);
  print(i2);

  var i3 = 10;
  var i4 = ++i3;
  print(i3);
  print(i4);

  //for循环
  for (var i = 0; i < 10; i++) {
    print(i);
  }

  //打印50以内的偶数
  for (var i = 0; i < 50; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }

}