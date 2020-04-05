import 'dart:io';

import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/material.dart';
import 'package:qreaderapp/src/bloc/scan_bloc.dart';
import 'package:qreaderapp/src/models/scan_model.dart';
import 'package:qreaderapp/src/pages/direcciones_pages.dart';
import 'package:qreaderapp/src/pages/mapas_pages.dart';
import 'package:qreaderapp/src/utils/utils.dart' as utils;


class HomePage extends StatefulWidget {
  
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final scansBloc = new ScansBloc();
  int currentIndex =0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Qr scanner'),
        actions: <Widget>[
          IconButton(
              icon:Icon(Icons.delete_forever),
              onPressed: scansBloc.borrarScansTodos,
          )
          
        ],
      ),
      body: _callPage(currentIndex),
        bottomNavigationBar: _crearBottonNavigationBar(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          child:Icon(Icons.filter_center_focus) ,
          onPressed:()=> _scanQR(context),
          backgroundColor: Theme.of(context).primaryColor,
          ),

    );
  }
_scanQR(BuildContext context)async{

String futureString = 'https://www.youtube.com/';
  // try {
    
  //   futureString= await BarcodeScanner.scan();
  // } catch (e) {
  // futureString = e.toString();
  // }
  // print('Future String $futureString');
    if(futureString!=null){
     
         final scan = ScanModel(valor:futureString);
         scansBloc.agregarScan(scan);
         final scan2 = ScanModel(valor:'geo:40.76273003437764,-74.4659937902344');
         scansBloc.agregarScan(scan2);
        if(Platform.isIOS){
          Future.delayed(Duration(milliseconds: 750),(){
            utils.abrirScan(context,scan);
          });
        }else{
            utils.abrirScan(context, scan);
        }
       
    
    }

  }
  Widget _crearBottonNavigationBar(){
    
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index){
          setState(() {
            currentIndex =index;
          });
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.map),
          title: Text('Mapas'),
        ),
         BottomNavigationBarItem(
          icon: Icon(Icons.brightness_5),
          title: Text('Direcciones'),
        )
      ],
    );
  }

  Widget _callPage(int pagina_actual){
    switch (pagina_actual) {
      case 0: return MapasPage();
      case 1: return DireccionesPage();
      default:
        return MapasPage();
    }
  }
}