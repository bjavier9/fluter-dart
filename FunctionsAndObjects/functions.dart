main() {
  isFalse();
  isTrue();
  myName();
  funcionFlecha('Javier Bolsa', 'la calle');
  print(retornoEntero());
  print(getNumero(6));
}
int getNumero(int numero){
  if(numero > 1){
      return numero * getNumero(numero - 1);


  }else  return 1;
}

int getRecurse(int num)
{
 if (num > 1) {
 print("In getRecurse and num is $num");
 return num * getRecurse(num - 1);
 } else return 1;
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