main(List<String> args) {
  try{
    int result =10 ~/ 0;
    print('the result is $result');
  }on IntegerDivisionByZeroException{
    print('We cannot divide by zero');
  }
try{
  int result =10 ~/ 0;
  print('The result is $result');
}catch(e){
  print('The exeption is $e');
}
try{
  int result =10 ~/ 0;
  print('The result is $result');
}catch(e){
  print('The exeption is $e');
}finally{
  print('this is finally and it always is executed.');
}



}