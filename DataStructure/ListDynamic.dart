
main(List<String> args) {
  var number1 = 1;
  var number2 =1;
var names =["John","robert","Smith","Peter"];
names.forEach((name)=>print(name));

var mappesNames = names.map((name)=>"Abscoding $name").toList();
print(mappesNames);
  while(number2<50){
    print(number2);
    number2+=number1;
    number1=number2-number1;

  }
  var fibonacciNumbers = [1,2,3,5,8,13,21,34];
  print(fibonacciNumbers.take(3).toList());
  print(fibonacciNumbers.skip(5).toList());
  print(fibonacciNumbers.skip(2).contains(5));
  print(fibonacciNumbers.take(3).skip(2).take(1).toList());

  var clone = List.from(fibonacciNumbers);
  print('clone list: $clone');
}