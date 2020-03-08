class myClass{
  String name;
  String get getName => name;
  set setName(String aValue)=> name=aValue;
}

main() {
  var myObject = myClass();
  myObject.setName="Todo bien";
  print(myObject.getName);
}