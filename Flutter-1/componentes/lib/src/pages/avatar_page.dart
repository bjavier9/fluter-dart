import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title:
       Text('Avatar Page'),
       actions: <Widget>[
        Container(
          padding: EdgeInsets.all(5.0),
           child: CircleAvatar(
             backgroundImage: NetworkImage('https://media.metrolatam.com/2020/03/08/miakhalifapublin-fb23f5b0976cb1c6144007f804a0748b-1200x800.jpg'),
             radius: 25.0,
           )
        )
       ,
         Container(
           margin: EdgeInsets.only(right:10.0 ),
           child:CircleAvatar(
             child: Text('SL'),
              backgroundColor: Colors.brown,
           )
           
         )
       ],
       ),
       body: Center(
         child: FadeInImage(
           image: NetworkImage('https://media.giphy.com/media/OX6OAtsiVScE0/giphy.gif'),
           placeholder:AssetImage('assets/progress.gif'),
           fadeInDuration: Duration(milliseconds: 200),
         ),
       ),
       );
  }
}