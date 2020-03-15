Function DividingByFour(){
  Function LetUsDivide=(int x)=>x ~/ 4;
  return LetUsDivide;
}

main(List<String> args) {
  var result = DividingByFour();
  print(result(56));
}