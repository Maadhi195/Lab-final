import 'package:drawer/src/password.dart';
import 'package:flutter/material.dart';



class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer Menu')
      ),
      drawer: Drawer(
        child: ListView(
            padding: EdgeInsets.all(0.0),
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('Hammad Khalid'),
                accountEmail: Text('hammadkhalid@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: ExactAssetImage('assets/aleydon.jpg'),
                ),

                otherAccountsPictures: <Widget>[
                  CircleAvatar(
                    child: Text('H'),
                    backgroundColor: Colors.white60,
                  ),
                  CircleAvatar(
                    child: Text('K'),
                  ),
                ],

                onDetailsPressed: (){},


                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/fundo.jpg"),
                        fit: BoxFit.cover)
                ),),

              ListTile(
                title: Text('Add Password'),
                leading: Icon(Icons.person),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Password()));
                },
              ),


              Divider(),
            ]
        ),
      ),


    );
    
  }
    
}