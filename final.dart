main() {
  var perfil =Registro();
  perfil.tipo=4;
  perfil.SetPrecio=23.23;
  perfil.Registrando(88961624, 'javier1','2345-4534');  
  perfil.Registrando(88961629, 'javier','2345-4564');  
  perfil.Registrando(88961629, 'javier2','2545-6534');
  perfil.Actualizar(88961629, {'nombre':'Josue'});
  Future.delayed(
    Duration(seconds: 10),(){ 
  perfil.Borrar(88961629);
  print(perfil.BuscarRegistro('javier'));
  print(perfil.Clientes);
  print(perfil.TipoPersona());
  print(perfil.GetPrecio);
  String playerName(String name) => name ?? 'Guest';
  print(playerName(null));
    });
 
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
  int cedula;
  static const itbms = 0.07;
  String persona;
  double precio;
  int tipo;
 

    Acciones();    
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
   List<Map<String, dynamic>> Clientes= List<Map<String, dynamic>>();
  List<Map<int, dynamic>> Facturas;
  Registro();
  
  Future<String> Register(int cedula, String telefono, String persona){

  Future<String> delayingTenSecond = Future.delayed(
    Duration(seconds: 10),(){
      Clientes.add({
        'id':Clientes==null?1:Clientes.length+1,
        "ced":cedula,
        "nombre":persona,
        "telefono":telefono
      });
      return "Registrado";
    }
  );
return delayingTenSecond;
}
  void Registrando(int cedula, String telefono, String persona) async{
  String displayNewsHeadlines= await Register(cedula, telefono, persona);
  print(displayNewsHeadlines);
  print(Clientes);
  }
  void Actualizar(int cedula, Map<String, dynamic> datos) async{
  bool displayNewsHeadlines= await Actualizando(cedula, datos);
  print(displayNewsHeadlines);
  print(Clientes);
  }

Future<bool> Actualizando (int cedula, Map<String, dynamic> datos){
    Future<bool> respuesta = Future.delayed(
    Duration(seconds: 10),(){
      
      Map<String, dynamic> nuevo = Map<String, dynamic>();
      var indice =Clientes.indexWhere((user)=>user['ced']==cedula);
      var buscando = Clientes.where((user)=>user['ced']==cedula).toList();
      var lista1 = buscando[0].keys.toList();
      for (var i in lista1) {
       if(datos.containsKey(i)){
         nuevo[i]=datos[i];
       }else{
         nuevo[i]=buscando[0][i];
       }
      }
      Clientes.replaceRange(indice, indice+1,[nuevo]);
      return true;
    }
  );
return respuesta;
}

void Borrar(int ced){
  Clientes.removeWhere((user)=>user['ced']==ced);
  print(Clientes);
  print('Borrado');
}
List<Map<String, dynamic>> BuscarRegistro(String persona){
  var buscando = Clientes.where((user)=>user['nombre']==persona).toList();
return buscando;
}
  
}