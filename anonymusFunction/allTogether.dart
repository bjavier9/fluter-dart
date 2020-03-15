
class AboutLambdas {
  Function addingNumbers = (int a, int b){
      var sum = a+b;
      return sum;
  };
Function multiplyWithEigth = (int num){
return num *8;
};
Function showName = (String name)=>name;

int hegherOrderFunction(Function myFunction){
  int a =10;
  int b= 20;
  print(myFunction(a,b));

}
Function returningAFunction(){
  Function showAge = (int age)=> age;
  return showAge;
}
String anyString = "Any parent String";
Function overridingParentScope = (){
 String message = "Overriding the parent scope";
 print(message);
};

Function show = (){
Function gettingImage(){
  String path = 'this is a new path to image';
  print(path);
}
return gettingImage;
};
}

main(List<String> args) {
  var add = AboutLambdas();
  var addition = add.addingNumbers(2,23);
  print(addition);
  var mul = AboutLambdas();
  var result = mul.multiplyWithEigth(4);
  print(result);
   var name = AboutLambdas();
 var myName = name.showName("Sanjib");
 print(myName);
 var higher = AboutLambdas();
 var higherOrder = higher.hegherOrderFunction(add.addingNumbers);
 higherOrder;
 var showAge = AboutLambdas();
 var showingAge = showAge.returningAFunction();
 print(showingAge(25));
 var sayMessage = AboutLambdas();
 sayMessage.overridingParentScope();
 var image = AboutLambdas();
 String path = "This is an old path.";
  var imagePath = image.show();
 imagePath();
}