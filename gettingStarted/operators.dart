main() {
  int aNum =12;
  double adouble=2.35;
  //devuelve un entero
  var result = aNum~/adouble;
  print(result);
 var  result2=aNum/adouble;
  print(result2);
  int anum = 12;
  anum++; //incrementa
  print(anum);
  ++anum;//incrementa
   print(anum);
  int anotherNum = anum+1;
  print(anotherNum);
  //operadores relacionales
  int first = 1;
  int second=2;
  if(first==second)print('si igual');
  else print('no es igual');

    if(first!=second)print('si es difrente');
  else print('no es diferente');
String saludo='Hola';
String saludo2='Hola';
if(first==second||saludo==saludo2)print('si es difrenten y igual los numero');
  else print('no es diferente');
  if(first==second&&saludo==saludo2)print('si es difrenten y igual los numero');
  else print('no es diferente');
int aNUmber = 35;
  if(!(aNUmber != 150) && aNUmber <= 150){
 print("It's true");
 } else print("It's false.");
  int myNumber = 13;
 bool isTrue = true;
 print(myNumber is int);
 print(myNumber is! int);
 print(myNumber is! bool);
 print(myNumber is bool);

 int firstNum = 10;
 int secondNum;
 if(firstNum==10)print('the value of ${firstNum}');
 if(secondNum==null)print('true');
 //secondNum ??=firstNum;
 print(secondNum); 
//int secondNum;
 if(firstNum == 10) print("The value of ${firstNum} is set.");
 if (secondNum == null) print("It is true.");
 secondNum ??= firstNum;
 print(secondNum);
 print("After using an assignment operator, the value changes.");
 secondNum += secondNum;
 print(secondNum);
 print("After using an assignment operator, the value changes again.");
 secondNum -= secondNum;
 print(secondNum);
 if (secondNum == null) print("It is true.");
 else print("it is false, because the 'secondNUm' has thevalue of ${secondNum} now.");

}