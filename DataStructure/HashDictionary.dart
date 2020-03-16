void mapFunction(){
  Map<String, String> countries =Map();
  countries['india']='Asia';
  countries['Alemania']='europe';
  countries['francia']='europe';
  countries['brazil']='south america';

  for (var key in countries.keys) {
    print('Country name $key');
  }

  for (var value in countries.values) {
    print('Continens name $value');
  }

 countries.forEach((key, value)=>print('country:$key and continent: $value'));
  if(countries.containsKey("Alemania")){
    countries.update("Alemania",(value)=>"European Union");
    print('Update country alemania');
    countries.forEach((key, value)=>print('country:$key and continent: $value'));
  }
  countries.remove('brazil');
  countries.forEach((key, value)=>print('country:$key and continent: $value'));
   //3. method of creating a map
 Map<String, int> telephoneNumbersOfCustomers = {
 "John" : 1234,
 "Mac" : 7534,
 "Molly" : 8934,
 "Plywod" : 1275,
 "Hagudu" : 2534
 };
 telephoneNumbersOfCustomers.forEach((key, value) =>
print("Customer: $key and Contact Number: $value"));
}
main(List<String> args) {
  mapFunction();
}