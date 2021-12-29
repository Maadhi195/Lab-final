import 'package:flutter/material.dart';

class Password extends StatefulWidget {
  TextEditingController nameController = TextEditingController();
  //TextEditingController passwordController = TextEditingController();


  @override
  _PasswordState createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login Screen App'),
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
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Security',
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    obscureText: true,
                    //controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                // Container(
                //   padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                //   child: TextField(
                //     obscureText: true,
                //     controller: passwordController,
                //     decoration: InputDecoration(
                //       border: OutlineInputBorder(),
                //       labelText: 'Password',
                //     ),
                //   ),
                // ),

                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blueGrey,
                      child: Text('Next'),
                      onPressed: () {
                        //print(nameController.text);
                       // print(passwordController.text);
                      },
                    )),

              ],
            )));
  }
}
