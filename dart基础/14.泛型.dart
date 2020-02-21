void main(){
  print(getData("123"));
  print(getData(456));
  print(getData<String>("qqq"));

  List l1 = new List<String>();
  l1.add("123");
  // l1.add(111);
  print(l1);
}

T getData<T>(T value){
  return value;
}