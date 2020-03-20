main(List<String> args) {
  

  List<Map<String, dynamic>> users =[
{'name':"Peter", 'age':18},
{'name':"Mira", 'age':20},
{'name':"jason",'age':22},
 { 'name': "Morgan", 'age': 32 },
 { 'name': "Mary", 'age': 50 },
 { 'name': "Will", 'age': 86 },
 { 'name': "Bruce", 'age': 96 }
  ];
//print(users);

//users.forEach((user)=>{print(user['name'])});
var is18AndOver = users.every((user)=>user['age']>=18);
print(is18AndOver);
users.lastIndexWhere((user)=>user['age']==96);
var buscar =users.indexWhere((user)=>user['age']==96);
print(buscar);
users.removeWhere((user)=>user['age']==18);
print(users);
var hasNameWithLetterA = users.every((user)=>user.toString().startsWith('a'));
print(hasNameWithLetterA);

var overTwentyOne = users.any((user)=>user['name'].contains('Peter'));
print(overTwentyOne);

var buscando = users.where((user)=>user['name']=='Bruce').toList();
var datos = buscando[0];
print(datos.keys.toList());

var underEighteen = users.singleWhere((user)=>user['age']<18, orElse: ()=>null);
print(underEighteen);

}