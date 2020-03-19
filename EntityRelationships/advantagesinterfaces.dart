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

class OrderDetail {
  //int age; error
  void anyNormalFunction(int age){
    print('this is a normal function to know the $age');
  }
  void UpdateCustomers(){}
  void TakeOrder(){}
}
abstract class CustomerDetails{
  void Customer(){
    //print('List of customer');
  }
}

class ItemDetails extends CustomerDetails implements OrderDetail {
  
  void anyNormalFunction(int age){
    print("This is a normal function to know the age: $age.");
  }
  void UpdateCustomers(){
    // print("Updating customers");
  }
  void TakeOrder(){
    // print("Taking order from customers.");
  }
  void Customer(){

  }
}

main(List<String> arguments){
 var car = Car();
 car._name = "Opel";
 print("Car name: ${car._name}");
 car.steerTheVehicle();
 car.lessOilConsumption();
 car.ridingExperience();
 var book = ItemDetails();
 //book.TakeOrder();
 //book.UpdateCustomers();
 book.anyNormalFunction(122);
}