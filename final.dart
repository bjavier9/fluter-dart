main() {
  var perfil =Registro(12, 'javier','2345-4564');
  perfil.tipo=4;
  perfil.SetPrecio=23.23;
  print(perfil.TipoPersona());
  print(perfil.GetPrecio);
}

//interfaces
abstract class Cuenta{
double Descuento(double precio){ return precio;}
double Itbms(double precio){return precio;}
double Penalizacion(double precio){ return precio;}
String TipoPersona(){String perfil;
return perfil;}
}
//clase prinsipal
class Acciones implements Cuenta{
  int numeros;
  static const itbms = 0.07;
  String persona;
  double precio;
  int tipo;
  List<Map<String, dynamic>> Clientes;
  List<Map<int, dynamic>> Facturas;

    Acciones(this.numeros, this.persona);    
    double get GetPrecio => precio;
    set SetPrecio(double costo)=>precio=costo;

  @override
  double Descuento(double precio)=>precio-precio*itbms;
  double Itbms(double precio)=>precio+precio*itbms;
  double Penalizacion(double precio)=>precio+2.33;
  String TipoPersona(){
    String perfil;
    try{
    if(this.tipo==1){
      perfil = 'Tipo Cliente-Local ${this.tipo}';
    }else if(this.tipo==2){
      perfil = 'Tipo Cliente-extranjero ${this.tipo}';
    }else if(this.tipo==3){
      perfil ='Tipo cliente-Colaborador ${this.tipo}';
    }else{
      throw new FormatException();
    }
    }catch(e){
      perfil='Mal selecionado';
    }  

    return perfil;
  }
}

class Registro extends Acciones{
  String telefono;
  Registro(int numeros, String persona, this.telefono) : super(numeros, persona);

}