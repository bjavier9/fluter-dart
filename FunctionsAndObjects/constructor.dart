class Oso{
int numeroPescados;
int horasDeDormir;
int subePeso;
Oso(horasDeDormir, numeroPescados){

  this.horasDeDormir=horasDeDormir;
  this.numeroPescados=numeroPescados;
}
int comerPescado()=>numeroPescados;
int dormirDespuesDeComerPescado()=>horasDeDormir;
int pesoOso()=>subePeso=comerPescado()+dormirDespuesDeComerPescado();

}
main() {
  var oso = new Oso(23,45);
  print("el oso duerme ${oso.dormirDespuesDeComerPescado()}");
  print(" Peso del oso> ${oso.pesoOso()} KG");
  print("Numero de pescado ${oso.comerPescado()}");

}