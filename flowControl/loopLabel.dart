
void labelsLoop(){
  outerloop:for (var i = 1; i <=3 ; i++) {
    print('Todo bien $i');

    innerloop:for (var x = 1; x <=3; x++) {
      if(x==1&&x==1){
        print('paso');
        break innerloop;
      }
      print(x);
    }
    print('este es un ciclo fuera del loop ${i}');
  }
}

void loopContinue(){

  for (var i = 0; i <=5; i++) {
    if(i % 2==0){
      print('these are all eve numbers. $i');
      continue;
    }print('numeros odd $i');
  }
}

void switchfunction(){
  var marks = "A";
  switch (marks) {
    case "A":print('bye');
    break;
    case "B":print('bichos');
    break;
    case "C":print('perro');
    break;
    case "D":print('GATO');
    break;
    default:print("fail");
    break;
  }
}

main() {
  labelsLoop();
  loopContinue();
  switchfunction();
}