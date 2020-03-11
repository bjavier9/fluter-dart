class Vehicle {
  void steerTheVehicle(){
    print('The vehicle is moving');
  }
}

class Engine {
  final _name;
  Engine(this._name);
  String lessOilConsumption(){
    return "It consumes less oil.";
  }
}

class Car implements Vehicle,Engine {
 var _name;
 void steerTheVehicle() {
 print("The car is moving.");
 }
 String lessOilConsumption(){
 print("This model of car consumes less oil.");
 }
 void ridingExperience() => print("This car gives good ride,because it is an ${this._name}");
}
main(List<String> arguments){
 var car = Car();
 car._name = "Opel";
 print("Car name: ${car._name}");
 car.steerTheVehicle();
 car.lessOilConsumption();
 car.ridingExperience();
}