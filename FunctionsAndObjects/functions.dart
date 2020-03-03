main() {
  isFalse();
  isTrue();
  myName();
  funcionFlecha('Javier Bolsa', 'la calle');
  print(retornoEntero());
}
void noRetornoNada(){
  print("No retorno Nada");
}
int retornoEntero(){
  int num = 10;
  return num;
}

String funcionFlecha(String name, String direccion)=>'este es su nombre $name, esta  es su direccion $direccion';
void isTrue(){
  print("esto es verdad");

}
void isFalse(){
  print("esto es falso");
}
myName(){
  print("My Name is Javier");
  myAge(12);
}
myAge(int age){
  print("My age is $age");
}