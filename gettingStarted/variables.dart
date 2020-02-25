void main() {

int a =1;
//variables de tipo string
String nombre = "jonh Doe";
//variables que se le asignan tipos dinamicamente
var dinamico = "Hola";

//template literals
print("$a ");
print('$dinamico');
print('$nombre');
//formas de imprimir una varible 
dinamico = '\$dinamico';
print('$dinamico');

//tipo dinamico de variables que puede cambiar en el timpo
dynamic myName = "John Smith";

myName=23;
print(myName);


}