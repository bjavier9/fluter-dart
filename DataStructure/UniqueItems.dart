void setFunction(){
  Set<String> countries = Set.from(['India','England','US']);
  Set<int> numbers = Set.from([1,45,58]);
  Set<int> moreNumbers = Set();
  moreNumbers.add(178);
  moreNumbers.add(568);
  moreNumbers.add(569);
  for (var item in numbers) {
    print(item);
  }
countries.forEach((v)=>print('${v}'));
for (var item in moreNumbers) {
  if(moreNumbers.lookup(item)==178){
    print(item);
    break;
  }
}
var fruitCollection = {'mango','Apple','Jack fruit'};
print(fruitCollection.lookup('Something else'));
 List fruitCollections = ['Mango', 'Apple', 'Jack fruit'];
 var myIntegers = [1, 2, 3, 'non-integer object'];
 print(myIntegers[3]);
 print(fruitCollections[0]);
}

main(List<String> args) {
  setFunction();
}