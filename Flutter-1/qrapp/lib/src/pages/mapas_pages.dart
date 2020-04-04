import 'package:flutter/material.dart';
import 'package:qreaderapp/src/provider/db_provider.dart';

class MapasPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Dbprovider.db.gettodoScans(),
      builder: (BuildContext context,AsyncSnapshot<List<ScanModel>> snapshot){
        if(!snapshot.hasData){
          return Center(child: CircularProgressIndicator(),);
        }
        final scans = snapshot.data;
        if(scans.length == 0){
          return Center(
            child: Text('No hay Informacion'),
            );
        }
        return ListView.builder(
          itemCount: scans.length,
          itemBuilder:(context, i)=>ListTile(
            leading: Icon(Icons.cloud_queue, color:Theme.of(context).primaryColor),
            title: Text(scans[i].valor),
            trailing:Icon(Icons.keyboard_arrow_right, color: Colors.grey),
          )
          
          );

      },
    );
  }
}