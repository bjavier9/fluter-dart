main() {
  List fruits = ['Mango', 'Apple', 'Banana', 'Pinapple'];
  print(fruits[1]);
  //Y podemos elegir cualquier artículo de esa colección usando
  //la tecla. En una matriz, la clave no se menciona en la definición;
  //se infiere automáticamente
  var myIntegers = [1, 23, 56, 'NO ES UN ENTERO'];

  //Sin embargo, recuerde que las listas de Dart
  //usan indexación basada en cero como todas las
  //otras colecciones que haya visto en otros lenguajes
  //de programación. Simplemente piense en una lista como
  //un par clave-valor, donde 0 es el índice del
  //primer valor o elemento.
  print(myIntegers[3]);
  var collecionfrutas = {'mango', 'pinapple', 'tomato'};
  print(collecionfrutas.lookup('mango'));
  //Podemos buscar un conjunto utilizando el
  //método de búsqueda (). Si buscamos algo más, devuelve nulo.
  print(collecionfrutas.lookup('somethings else'));
//Por ahora, solo recuerde que, en general, un mapa es un objeto
//que asocia claves con valores. El conjunto también tiene claves,
//pero son implícitas. En casos de conjuntos, los llamamos índices.
//Veamos un ejemplo del tipo de Mapa mapeando literales.
  var myInteger = {};
  if (myInteger.isEmpty) {
    print('No tiene nada value key');
  } else
    print('Si tiene claves y valores');

  var producto = {
    'fruta': 'peras',
    'nombre': 'javier',
    'direccion': 'Panama',
    'auto': false,
    'edad': 23
  };
  print(producto['fruta']);
Set myset={2,345,678};
  var listas ={
    1:'test',
    2:'ford',
    3:'ferrari',
    4:'lamborghini',
    5:'Toyota',
    6:myset
    };
    Set acumulo = listas[6];
    print(acumulo.lookup(2));
var products = Map();
products['first']=1;
products['second']='bay';
products['third']='report';
if(products.containsValue('report')){
  print("este producto contiene un ${products['third']}");
}
  
}
