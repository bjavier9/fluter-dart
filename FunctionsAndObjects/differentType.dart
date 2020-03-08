String defaultParameters(String name, String address,{age=10}){
  return "$name and $address and age $age";
}
String optionalParameters(String name, String address, {int age}){
  return "$name and $address and age $age";
}
int findTheVolume(int length, {int height, int breadth}){
 return length * height * breadth;
}
main() {
  print(defaultParameters("Jonh snow", 'ave. Santa Elena'));
  print(optionalParameters("daynerus Targ",'ave. san felipe'));
  print(defaultParameters("JOhn", "Jericho", age : 20));
   var result1 = findTheVolume(10, height: 20, breadth: 30);
 var result2 = findTheVolume(10, breadth: 30, height: 10);
 print(result1);
 print(result2);
}