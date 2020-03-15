String message = "Any Parent String";
Function overridingParentScope = (){
String message = "overriding the parent scope";
print(message);
};
Function show = (){
  Function gettingImage(){
    String path = "This is a new path to  image";
    print(path);
  }
  return gettingImage;
};

main(List<String> args) {
  print(message);
  overridingParentScope();
  var showing = show();
  showing();
}

