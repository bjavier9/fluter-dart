class Animal {
  String name="Animal";
  Animal(){
    print('I an animal class contructor');
  }
  Animal.namedConstructor(){
    print('This is parent animal named constructor');
  }
  void showName(){
    print(this.name);
     print('Hi from ${this.name}');
  }
  void eat(){
    print('Animals eat evrything depending on what type it is.');
  }
}

class Cat extends Animal {
  Cat():super(){
    print("Yo soy un gato de la que anula a la clase animal");
  }
  Cat.nameCatConstructo(): super.namedConstructor(){
    print("the child cat named contructor overrides the parent animal named constructor");
  }
  @override
  void showName(){
    print(this.name);
    print('Hi from cat');
  }

  @override
  void eat(){
    super.eat();
    print('cat doesn\'t eat vegetables');
  }
}

class Cow extends Animal {
  Cow():super(){
    print("Esta child vaca anula la clase super anima l");
  }

  Cow.nameCatConstructo():super.namedConstructor(){
    print("The child cow named constructor overrides the parent animal named constructor.");
  }
  @override
  void showName(){
    print("Hi from cow");
    print(this.name);
  }

  @override
  void eat(){
    super.eat();
    print("cow does eat grass");
  }
}

main() {
  var cow= Cow();
  cow.name="Deisy";
  cow.showName();
  var cat = Cat();
  cat.name="Meow";
  cat.showName();
  cat.eat();
  var anothercat=Cat.nameCatConstructo();
}