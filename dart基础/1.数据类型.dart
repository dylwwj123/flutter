void main(){
  // 字符串定义的几种方式
  String str1 = 'str1';
  String str2 = "str2";
  String str3 = """str3str3str3str3str3str3123
  str3str3str3str3str3str3str3str3str3str3""";
  print(str1);
  print(str2);
  print(str3);

  // 字符串拼接
  String str4 = "我";
  String str5 = "你";
  print(str4 + " " + str5);
  print("$str4 $str5");

  // 数值类型
  int i1 = 123;
  double d1 = 123.123;
  print(i1);
  print(d1);

  // 波尔类型
  bool b1 = true;
  bool b2 = false;
  print(b1);
  print(b2);

  var b4 = 123;
  var b5 = 124;
  if (b4 == b5) {
    print("相等");  
  } else {
    print("不相等");
  }

  //数组
  List l1 = ["111","222","333"];
  print(l1);
  print(l1.length);
  print(l1[0]);

  var l2 = new List();
  l2.add("111");
  l2.add("222");
  l2.add("333");
  print(l2);

  var l3 = new List<String>();
  l3.add("111");
  print(l3);

  //字典
  var person = {
    "name" : "张三",
    "age" : 20,
    "work" : ["111","222","333"]
  };
  print(person);
  print(person["name"]);
  print(person["work"]);

  var p1 = new Map();
  p1["name"] = "李四";
  p1["age"] = 30;
  p1["work"] = [123,123,123];
  print(p1);

  // 类型的判断
  var is1 = 123;
  if (is1 is String) {
    print("是字符串");
  }else {
    print("不是字符串");
  }
}