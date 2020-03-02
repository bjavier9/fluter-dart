main() {
  
  var num = 5;
  var factorial =1;
  while(num>=1){
    factorial = factorial*num;
    num--;
    print("'=>'${num}");
  };

  print(' El factorial es $factorial');
num =5;
factorial=1;
  do {
    factorial = factorial*num;
    num--;
    print("num $num");
  } while (num>=1);
whileLoopfunction();
doWhileFunction();
forLoopfunction();
}
void whileLoopfunction(){
  var i = 0;
  while (i<=5) {
    print(i);
    i++;
  }
}
void forLoopfunction(){
  for(var i=0; i<=5; i++ ){
    print(i);
  }
}
void doWhileFunction(){
  var i=0;
  do{
    print(i);
    i++;
  }while (i<=5);
}