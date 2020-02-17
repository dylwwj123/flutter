void main(List<String> args) {
  //number string 转换
  String str1 = "100";
  var i1 = int.parse(str1);
  var i2 = double.parse(str1);
  print(i1);
  print(i2);

  var i3 = 10000;
  var str2 = i3.toString();
  print(str2);
  print(str2 is String);

  String price1 = "123";
  try {
    var pN = double.parse(price1);
    print("转换金钱成功 $pN");  
  } catch (e) {
    print("转换金钱失败!");
  }

  //判断字符串是否为空
  var ss1 = "";
  if (ss1.isEmpty) {
    print("字符串为空");
  } else {
    print("字符串不为空");
  }

  //判断数字是否为0
  var ss2 = 0;
  if (ss2 == 0) {
    print("数字为0");
  } else {
    print("数字不为0");
  }

  var ss3;
  if (ss3 == null) {
    print("ss3 = null");
  } else {
    print("ss3 != null");
  }

  //nan not a number 
  var ss4 = 0/0;
  if (ss4.isNaN) {
    print("nan");
  }else {
    print("no nan");
  }
}