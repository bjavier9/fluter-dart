class Animal {
 String name = "Animal";
 Animal(){
 print("I am Animal class constructor.");
 }
 Animal.namedConstructor(){
 print("This is parent animal named constructor.");
 }
 void showName(){
 print(this.name);
 print("Hi from ${this.name}");
 }
 void eat(){
 print("Animals eat everything depending on what type it is.");
 }
}
class Dog extends Animal {
 //overriding parent constructor
 //although constructors are not inherited
 Dog() : super(){
 print("I am child class dog overriding super Animal class.");
 }
 Dog.namedDogConstructor() : super.namedConstructor(){
 print("The child dog named constructor overrides the parent animal named constructor.");
 }
 Dog.anotherNamedConstructor(){
 print("This is parent Dog named constructor.");
 }
 @override
 void showName(){
 print("Hi from parent dog.");
 print(this.name);
 }
 @override
 void eat(){
 super.eat();
 print("Dog doesn't eat vegetables..");
 }
}

class PuppyDog extends Dog {
 //overriding parent constructor
 //although constructors are not inherited
 PuppyDog() : super(){
 print("I am child class puppy dog overriding my immediateparent Dog class.");
 }
 PuppyDog.namedDogConstructor() : super.anotherNamedConstructor(){
 print("The child puppy dog named constructor overrides the parent Dog another named constructor.");
 }
  @override
 void showName(){
 print("Hi from puppy dog.");
 print(this.name);
 }
 @override
 void eat(){
 super.eat();
 print("Puppy Dog eats milk only ...");
 }
}
main(List<String> arguments){
 var animal = Animal();
 animal.name = "Cow";
 animal.showName();
 var dog = Dog();
 dog.name = "Lucky";
 dog.showName();
 dog.eat();
 var anotherDog = Dog.namedDogConstructor();
 var puppy = PuppyDog();
 puppy.name = "I am offspring of Lucky";
 puppy.showName();
 puppy.eat();
 var anotherPuppy = PuppyDog.namedDogConstructor();
}