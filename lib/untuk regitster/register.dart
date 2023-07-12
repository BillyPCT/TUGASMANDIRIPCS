import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tugasmandiripcs/Landing/landing.dart';

void main() {
  runApp(MaterialApp(
    home: register(),
  ));
}
TextEditingController getUser = new TextEditingController();
TextEditingController getPass = new TextEditingController();
final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

class register extends StatelessWidget {
  const register({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        key: _scaffoldKey,
          body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.2),
          Text(
            'Welcome',
            style: TextStyle(
                color: Colors.red[900],
                fontSize: 32,
                letterSpacing: 4.0,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            "LOGIN TO PET'S STORE",
            style: TextStyle(
                color: Colors.red[300], fontSize: 18, letterSpacing: 1.0),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: getUser,
              cursorColor: Colors.red,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.red, width: 2.0),
                  borderRadius: BorderRadius.circular(50.0),
                ),
                contentPadding:
                    EdgeInsets.only(left: 30.0, top: 20.0, bottom: 20.0),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.red, width: 2.0),
                  borderRadius: BorderRadius.circular(50.0),
                ),
                suffixIcon: Icon(
                  Icons.person,
                  color: Colors.red,
                ),
                labelText: ('Username'),
                labelStyle: TextStyle(color: Colors.red),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: getPass,
              cursorColor: Colors.red,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.red, width: 2.0),
                  borderRadius: BorderRadius.circular(50.0),
                ),
                contentPadding:
                    EdgeInsets.only(left: 30.0, top: 20.0, bottom: 20.0),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.red, width: 2.0),
                  borderRadius: BorderRadius.circular(50.0),
                ),
                suffixIcon: Icon(
                  Icons.lock,
                  color: Colors.red,
                ),
                labelText: ('Password'),
                labelStyle: TextStyle(color: Colors.red),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    onPressed: () {
                     // nanti kita arahkan kehalaman login
  //default user
  String user = 'admin';
  String pass = '12345';
  
  if  (getUser.text.length == 0 && getPass.text.length==0) {     
     Navigator.pop(context, MaterialPageRoute(builder: (context) => register()));
    final errorUser = SnackBar(content: Text('Username sama password harus diisi'),duration: Duration(seconds: 2,));
    ScaffoldMessenger.of(context).showSnackBar(errorUser); // Menggunakan ScaffoldMessenger.of(context)

} else if (getUser.text.length == 0) {
         Navigator.pop(context, MaterialPageRoute(builder: (context) => register()));
    final errorUser = SnackBar(content: Text('Username tidak boleh kosong!'),duration: Duration(seconds: 2),);
    ScaffoldMessenger.of(context).showSnackBar(errorUser); // Menggunakan ScaffoldMessenger.of(conte
  } else if (getPass.text.length == 0) {
         Navigator.pop(context, MaterialPageRoute(builder: (context) => register()));
    final errorUser = SnackBar(content: Text('Password tidak boleh kosong!'),duration: Duration(seconds: 2),);
    ScaffoldMessenger.of(context).showSnackBar(errorUser); // Menggunakan ScaffoldMessenger.of(context)
 
  } else if (getUser.text == user && getPass.text == pass) {
    final errorUser = SnackBar(content: Text('Selamat datang : ' + getUser.text),duration: Duration(seconds: 2),);
    ScaffoldMessenger.of(context).showSnackBar(errorUser); // Menggunakan ScaffoldMessenger.of(context)
    //delay to Home page
    Timer(Duration(seconds: 0), (){
      Navigator.push(context, MaterialPageRoute(builder: (context) => LandingPage()));
    });
  } else {
         Navigator.pop(context, MaterialPageRoute(builder: (context) => register()));

    final errorUser = SnackBar(content: Text('username sama password salah!'),duration: Duration(seconds:2 ),);
    ScaffoldMessenger.of(context).showSnackBar(errorUser); // Menggunakan ScaffoldMessenger.of(context)
  }
},
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          letterSpacing: 2.0,
                          color: Colors.red[900],
                          fontSize: 20),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    onPressed: () {
                      // nanti kita arahkan kehalaman login
                    },
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                          letterSpacing: 2,
                          color: Colors.red[900],
                          fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      )),
    );
  }
}
