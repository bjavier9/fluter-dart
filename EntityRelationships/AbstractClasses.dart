abstract class volumen {
  int age;
  void increase();
  void decrease();
  void anyNormalFunction(int age){
    print('this is a normal function $age');
  }


} 
class soundSystem extends volumen {
    void increase(){
      print('sound is up');
    }
    void decrease(){
      print('sound is down');
    }

    void anyNormalFunction(int age){
      print('this is normal function this is old sound $age');
    }
  }
abstract class Mammal {
 void run();
 void walk();
 void sound(){
 print("Mammals make sound");
 }
}
class Human implements Mammal {
 void run(){
 print("I am running.");
 }
 void walk(){
 print("I am walking");
 }
 void sound(){
 print("Humans make sound");
 }
}
  main(List<String> args) {
     var John = Human();
 print("John says: ");
 John.run();
 print("John says: ");
 John.walk();
 print("John makes no sound.");
 John.sound();
    var newsystem = soundSystem();
    newsystem.increase();
    newsystem.decrease();
    newsystem.anyNormalFunction(10);
  }
