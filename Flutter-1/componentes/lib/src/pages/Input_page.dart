
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

String _nombre='';
String _email='';
String _password='';
String _calendario='';
String _optSelecionada='Seleccione una';
TextEditingController _inputFieldDateController = new TextEditingController();
List _poderes =['Controladora','loca','bandida','fea'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs Text'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical:20.0 ),
        children: <Widget>[
          _crearInput(),
          Divider(),
          _crearEmail(),
          Divider(),
           _crearPassword(),
           Divider(),
           _crearFecha(context),
           Divider(),
           _crearDropDown(),
           Divider(),
          _crearPersona(),
          Divider()
        ],
      ),
    );
  }

Widget _crearInput(){
  return TextField(
// autofocus: true,
  textCapitalization: TextCapitalization.sentences,
  decoration: InputDecoration(
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
    counter: Text('Letras ${_nombre==null ? '0' :_nombre.length}'),
    hintText: 'Nombre de la persona',
    labelText: 'Nombre',
    helperText: 'Solo es el Nombre',
    suffixIcon: Icon(Icons.accessibility),
    icon: Icon(Icons.account_circle)
  ),
  onChanged: (valor){
    setState(() {
       _nombre = valor;
    });
  },
  );
}


Widget _crearEmail(){
return TextField(
// autofocus: true,
 keyboardType: TextInputType.emailAddress,
  decoration: InputDecoration(
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
    hintText: 'Email',
    labelText: 'Email',
    suffixIcon: Icon(Icons.alternate_email),
    icon: Icon(Icons.account_circle)
  ),
  onChanged: (valor){
    setState(() {
       _email = valor;
    });
  },
  );
}

Widget  _crearPassword(){
  return TextField(
// autofocus: true,
 obscureText: true,
  decoration: InputDecoration(
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
    hintText: 'Password',
    labelText: 'Password',
    suffixIcon: Icon(Icons.lock_open),
    icon: Icon(Icons.lock_outline)
  ),
  onChanged: (valor){
    setState(() {
       _password = valor;
    });
  },
  );
}
Widget _crearPersona(){
  return ListTile(
    title:Text(_nombre==null ? '' :'Nombre es: $_nombre'),
    subtitle:Text(_email==null ? '' :'$_optSelecionada Email es: $_email y el password $_password') ,
  
  );
}

List<DropdownMenuItem<String>> getOpcionesDropdown(){
  List<DropdownMenuItem<String>> lista = new List();
  _poderes.forEach((poder){
    lista.add(
      DropdownMenuItem(
        child: Text(poder),
        value: poder
        )
    );
  });
  return lista;
}
Widget  _crearDropDown(){

  return Row(
    children: <Widget>[
      SizedBox(width: 30.0,),
      Icon(Icons.select_all),
      Expanded(
        child: DropdownButton(
   
    items:<String>['One', 'Two', 'Free', 'Four']
      .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      })
      .toList(), 

    onChanged: (String value){
      setState(() {
        _optSelecionada = value.toString();
      });
        
    },
  )
      
      )
      ,
    ],
  );
  
 
}


Widget _crearFecha( BuildContext context){
  return TextField(
// autofocus: true,

enableInteractiveSelection: false,
controller:_inputFieldDateController,
  decoration: InputDecoration(
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
    hintText: 'Fecha de nacimiento',
    labelText: 'Fecha de nacimiento',
    suffixIcon: Icon(Icons.calendar_view_day),
    icon: Icon(Icons.calendar_today)
  ),
  onTap: (){
   FocusScope.of(context).requestFocus(new FocusNode());
   _selectDay(context);
  },
  );
}

_selectDay(BuildContext context) async{
  DateTime picket = await showDatePicker(
    context: context,
    initialDate: new DateTime.now(),
    firstDate: new DateTime(2019),
    lastDate: new DateTime(2025),
    locale: Locale('es','ES')
  );
  if(picket != null){
    setState(() {
      _calendario= picket.toString();
      _inputFieldDateController.text= _calendario;
    });
  }
}

}