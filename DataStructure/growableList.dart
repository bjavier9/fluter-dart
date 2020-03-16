Function growbleList(){
  List<String> names = List();
  names.add("Mana");
  names.add("Bubu");
  names.add("Gopal");
  names.add("Pota");
  print("-----"); 
  names.forEach((v)=>print('${v}'));
  print("---");

  for (var i = 0; i < names.length; i++) {
    print(names[i]);
  }

}
main(List<String> args) {
  growbleList();
}
