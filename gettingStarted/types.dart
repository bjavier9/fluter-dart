main() {
  String saySomething = "Hello my name is watson";
  print(saySomething);
  var isFalse = true;
  if (saySomething == null) {
    print('It is ${isFalse}');
  } else
    print("It is not ${isFalse}");

//Puede usar const en lugar de var o una declaración de 
// tipo String, int o bool. • También puedes usar final; 
// pero recuerde, la variable final solo se puede establecer 
// una vez. Entonces, hay una diferencia entre estas dos palabras
//  clave: const y final. Volveremos a este tema cuando 
//  discutamos la programación orientada a objetos
const firstname = "Javier";
const lastName ="Balsas";
String firsTname = "Jhon";
String lastname ="Snow";
print(firstname);
String numero = '1';
var one = int.parse(numero);
print(one);
if(one.isOdd){
  print("Is impar number.");
}else print('Es un numero par');
//isodd inpar
//isinfinite numeros infinitos.
var doubleString = double.parse('23.564');
print(doubleString);
if(one.isOdd && doubleString.isInfinite){
  print('numero inpar y numero finito');
}else print('numero par y numero infinito');

//pasando numero a string 
//pasando double a string
int miNumero=542;
double myDouble=3.45;
String numeroString = miNumero.toString();
String douString = myDouble.toString();
//isEven numero par 
//isfinite si el numero es finito 
if((numeroString=='542' && miNumero.isEven)&&
(douString=='3.45'&&myDouble.isFinite)
){
  print("Ambos se han convertido de un número par $miNumero y un doble finito $myDouble a cadena");
}else print('"El número y el doble no se han convertido en cadena".');


String agregados='gato con bot\'s';
print(agregados);
//concatenacion
String palabras = 'string'+' concatenaciones';
print(palabras);
String muchasLineas ="""
hola esto es un test $myDouble,
como $saySomething
""";

print(muchasLineas);

//diferente tipos de const
const aconstInt=23;
const aconstBool=true;
const aconsString="Hasta la vista beibi";
const aconsDouble=334.567;
print("""
$aconstInt 
$aconsString
$aconstBool
$aconsDouble
""");
}
