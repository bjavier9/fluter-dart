var outsideVariable="Yo estoy fuera";

main() {
  print(outsideVariable);
  String insiderFunction(){
    
   print("$outsideVariable  is from the insider function");
    print("esto es una function insider");
  String insiderVariable="estoy dentro";
  print(insiderVariable);
  };
  insiderFunction();
}