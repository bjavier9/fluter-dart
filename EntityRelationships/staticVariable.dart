class Circle {
  static const pi = 3.14;
  static void drawACircle(){
    print(pi);
  }

  void aNonStaticFunction(){
    Circle.drawACircle();
    print('This is normal function');
  }
}

main(List<String> args) {
  var circle = Circle();
  circle.aNonStaticFunction();
  Circle.drawACircle();
  print(Circle.pi);
  
}