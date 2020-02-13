void main(){
  //list
  //length      长度
  //reversed    翻转
  //isEmpty     是否为空
  //isNotEmpty  是否不为空
  //add         增加
  //addAll      拼接数组
  //indexOf     查找 具体值
  //remove      删除 具体值
  //removeAt    删除 索引
  //fillRange   修改
  //insert(index,value) 指定位置插入
  //insertAll(index,list) 指定位置插入list
  //toList()    其他类型转换为list
  //join()      list转换为字符串
  //split()     字符串转换为list
  //forEach
  //map
  //where
  //any
  //every

  List l1 = new List();
  l1.add("111");
  l1.add("222");
  l1.add("333");
  print(l1);
  print(l1.reversed);
  l1.fillRange(1, 3,"444");
  print(l1);
  var str1 = "aaa,bbb,ccc";
  print(str1.split(','));

  //set 去重
  var set1 = new Set();
  set1.add("111");
  set1.add("111");
  set1.add("222");
  print(set1);
  print(set1.toList());

  List l2 = ["111","222","333","444","123","111","222"];
  Set set2 = new Set();
  set2.addAll(l2);
  print(l2);
  print(set2.toList());

  //map
  //keys        获取所有的key
  //values      获取所有的value
  //isEmpty     是否为空
  //isNotEmpty  是否不为空
  //remove(key) 删除指定key的数据
  //addAll({...}) 合并map 增加属性
  //containsValue 查看map内的值 返回true false

  Map m1 = {
    "a":"aaa",
    "b":"bbb"
  };
  print(m1.keys.toList());
  print(m1.values.toList());
  print(m1.isEmpty);
  print(m1.containsValue("aaa"));

  //循环list map
  List lll1 = ["啊啊啊","不不不","哦哦哦"];
  for (var i = 0; i < lll1.length; i++) {
    print(lll1[i]);
  }

  for (var item in lll1) {
    print(item);
  }

  lll1.forEach((value){
    print(value);
  });

  List lll2 = [1,2,3,4,5,6,7,8,9];
  var lll3 = lll2.where((value){ //查找满足条件的值
    return value>5;
  });
  var lll4 = lll2.any((value){  //只要有一个满足返回true
    return value>5;
  });
  var lll5 = lll2.every((value){  //必须全部满足返回true
    return value>5;
  });
  print(lll3);
  print(lll4);
  print(lll5);

  Map mmm1 = {
    "name":"wws",
    "age":20
  };
  print(mmm1);
  mmm1.forEach((key,value){
    print("$key -- $value");
  });
}