import 'package:burcrehberi/views/BurcKategori.dart';
import 'package:burcrehberi/views/burcdetay.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes:{
        "/" :(context)=>BurcListesi(),
        "/burcKategori" : (context)=> BurcListesi(),

      },
      onGenerateRoute: (settings){
        List<String> kategoriler = settings.name!.split("/");
        if(kategoriler[1]=="burcDetay"){
          return MaterialPageRoute(builder: (context)=>BurcDetay(int.parse(kategoriler[2])));
        }
      },



      title: "Burç Rehberi",
      debugShowCheckedModeBanner: false,


    );


  }

}

