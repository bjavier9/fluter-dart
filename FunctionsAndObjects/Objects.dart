main() {
  var newCar = new Car();
  newCar.CarName="Ferrari ENZO";
  newCar.carModel=2345;
  newCar.turnOn(false);
  if(newCar.isTurnedOn()){
    print("${newCar.CarName} start, model number ${newCar.carModel}");
  }else print("${newCar.CarName} stop, model number ${newCar.carModel}");
 int numerito = 23;
 var oso = new bear();
 oso.numPescado=23;
 oso.horasDormir=12;
 print("${oso.comerPescado(oso.numPescado)} numeros de pescados");
   print("${oso.aumentoDePeso(oso.numPescado, oso.horasDormir)} peso del oso");

 print("${oso.dormirDespuesComer(oso.horasDormir)} Horas de dormir.");

}



class bear{
  int numPescado;
  int horasDormir;
  int aumentoPeso;
  // int comerPescado(int numPescado){
  //   return numPescado;
  // }

  // int dormirDespuesComer(int horasDormir){
  //   return horasDormir;
  // }
  // int aumentoDePeso(int numPescado, int horasDormir ){
  //   aumentoPeso=numPescado*horasDormir;
  //   return aumentoPeso; 
  // }


  // otra forma
  int dormirDespuesComer(int horasDormir)=>horasDormir;
  int aumentoDePeso(int numPescado, int horasDormir )=>aumentoPeso=numPescado*horasDormir;
  int comerPescado(int numPescado)=>numPescado;
}

class Car {
  int carModel= 123;
  String CarName="Toyota supra";
  bool isOn=true;
  bool turnOn(bool turnOn){
    isOn=turnOn;
  }
  bool isTurnedOn(){
    return isOn;
  }

}