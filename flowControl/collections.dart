main() {
  Set mySet = {1,23,4};
  var my_products = {
    1:'TV',
    2:'refr',
    3:mySet.lookup(2)
  };

  var userCollection = {
    'name':'Javier Balsas',
    'email':'javier9518@gmail.com'
  };
  my_products.forEach((x,y)=>print("${x} : ${y}"));
  userCollection.forEach((k,v)=>print("${k}:${v}"));

  var myCollection = [1,2,3,56,7,8,3];
  for(var x in myCollection){
    print('${x}');
  }


}