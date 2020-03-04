main() {
  var newCar = new Car();
  newCar.CarName="Ferrari ENZO";
  newCar.carModel=2345;
  newCar.turnOn(false);
  if(newCar.isTurnedOn()){
    print("${newCar.CarName} start, model number ${newCar.carModel}");
  }else print("${newCar.CarName} stop, model number ${newCar.carModel}");

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