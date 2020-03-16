import 'dart:collection';
main(List<String> args) {
  Queue myQueue = new Queue();
  print('default implementation ${myQueue.runtimeType}');

  myQueue.add('Stanford');
  myQueue.add(345);
  myQueue.add('repasorio');
  myQueue.add('javier9518@gmail.com');
  for (var item in myQueue) {
    print(item);
  }

print('we are removing the first element ${myQueue.elementAt(0)}');
myQueue.removeFirst();
for (var item in myQueue) {
  print(item);
}

print('We are removing the last element ${myQueue.elementAt(2)}.');
myQueue.removeLast();
for (var item in myQueue) {
  print(item);
}

}