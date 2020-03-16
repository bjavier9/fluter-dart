void main() {
  var lst =new List();
  lst.add(3);
  lst.add(4);
  print(lst);
  listFunction();
}

int listFunction(){
  List<int> nameOfTest = List(3);
  nameOfTest[0]=1;
  nameOfTest[1]=2;
  nameOfTest[2]=3;
for( int element in nameOfTest){
  print(element);
}
nameOfTest.forEach((v)=>print('${v}'));

for (var i = 0; i < nameOfTest.length; i++) {
  print(nameOfTest[i]);
}

}
