import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'buscar.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bienvenidos Grupo 03',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Inicio App Grupo 03'),
          ),
          body: SingleChildScrollView(
            child:Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left:20,top:20,right:20, bottom:0),
                  child: Center(
                    child: Container(
                      width: 200,
                      height: 200,
                      child: Image.asset('image/tienda.png'),
                    ),
                  ),
                ),
                Padding(
                    padding:
                    EdgeInsets.only(left:20,top:10,right:20, bottom:0),
                    child:TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Búsqueda',
                        hintText:'Palabra Clave de la búsqueda',
                      ),
                    )
                ),
                //Padding(padding:
                //EdgeInsets.only(left:20,top:20,right:20, bottom:0),
                Builder(
                builder: (context) => ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => buscar()));
                    },
                    child: Text('Buscar'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red[600],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(600)),
                    ),
                ),
                ),
              ],
            ),
          )
      ),
    );
  }
}
