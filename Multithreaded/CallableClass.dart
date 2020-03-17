class CallableClassWithoutArgument {
  String output ='Callable class';
  void call(){
    print(output);
  }
}
class callableClassWithArgument {
  call(String name)=>'$name';
}
class Person{
  String name;
  String call(String message, [name]){
    return 'this message; $message, has been passed to the person $name';
  }
}

main() {
  var withoutArgument = CallableClassWithoutArgument();
  var withArgument = callableClassWithArgument();
  var john = Person();
  john.name = 'John Smith';
  String name = john.name;

  String msgAndName = john('Hi jonh how are you?', name);
  print(msgAndName);
  print(withArgument("jonh smith"));
  print(withArgument.call('Calling jhon smith'));
}