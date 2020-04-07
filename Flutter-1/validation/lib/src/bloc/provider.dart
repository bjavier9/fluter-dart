import 'package:flutter/material.dart';
import 'package:validation/src/bloc/login_bloc.dart';
export 'package:validation/src/bloc/login_bloc.dart';

class Provider extends InheritedWidget {
static Provider _intancia;
factory Provider({Key key, Widget child }){
  if(_intancia==null){
    _intancia = new Provider._internal(key:key, child: child);
  }
  return _intancia;
}
Provider._internal({Key key, Widget child }): super(key:key, child:child);

final loginBloc = LoginBloc();
  @override
  bool updateShouldNotify(InheritedWidget oldWidget)=>true;
  static LoginBloc of (BuildContext context){
    return ( context.dependOnInheritedWidgetOfExactType<Provider>()).loginBloc;
  }
    

}