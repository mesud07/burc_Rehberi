import 'package:burcrehberi/models/burc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:burcrehberi/views/BurcKategori.dart';
import 'package:flutter/material.dart';

class BurcDetay extends StatelessWidget {
  int ? gelenIndex;
  late Burc secilenBurc;

  BurcDetay(this.gelenIndex);

  @override
  Widget build(BuildContext context) {
    secilenBurc = BurcListesi.tumBurclar[gelenIndex!];
    List<String> ayrilan = secilenBurc.burcDetayi.split(":");
    return Scaffold(
   
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        primary: true,

        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            pinned: true,
            backgroundColor: Colors.pink,
            primary: true,
            title: Text(secilenBurc.burcAdi + " Ve Özelliklwri"),
            flexibleSpace: Image.asset("images/"+secilenBurc.burcBuyukResim,fit: BoxFit.cover,),
          ),

          SliverToBoxAdapter(
            child: Container(
                margin: EdgeInsets.all(15),

                child:
                Text(secilenBurc.burcDetayi,style: TextStyle(fontSize: 18),)),
          )
        ],
      ),

    );
  }
}
