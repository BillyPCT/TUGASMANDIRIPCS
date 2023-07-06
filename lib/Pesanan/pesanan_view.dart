import 'package:flutter/material.dart';
import 'package:tugasmandiripcs/pesanan/pesanan_appbar.dart';
import 'package:tugasmandiripcs/constant.dart';

class PesananPage extends StatefulWidget {
  const PesananPage({Key? key}) : super(key: key);

  @override
  State<PesananPage> createState() => _PesananPageState();
}

class _PesananPageState extends State<PesananPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: pesananAppBar(),
        backgroundColor: FinancePalette.grey,
        body: Container(
          child: ListView(
            physics: ClampingScrollPhysics(),
            children: [
              Container(
                color: Colors.white,
                margin: EdgeInsets.only(top: 16.0),
                child: Column(
                  children: [
                  ListTile(
      leading: Icon(Icons.shopping_cart),
      title: Text('Produk 1'),
      subtitle: Text('Deskripsi produk 1'),
      trailing: Text('Rp 100.000'),
    ),
    Divider(),
    ListTile(
      leading: Icon(Icons.shopping_cart),
      title: Text('Produk 2'),
      subtitle: Text('Deskripsi produk 2'),
      trailing: Text('Rp 200.000'),
    ),
    Divider(),
    ListTile(
      leading: Icon(Icons.shopping_cart),
      title: Text('Produk 3'),
      subtitle: Text('Deskripsi produk 3'),
      trailing: Text('Rp 300.000'),
    ), 
     Divider(),
    ListTile(
      leading: Icon(Icons.shopping_cart),
      title: Text('Produk 4'),
      subtitle: Text('Deskripsi produk 4'),
      trailing: Text('Rp 400.000'),
    ),  
     Divider(),
    ListTile(
      leading: Icon(Icons.shopping_cart),
      title: Text('Produk 5'),
      subtitle: Text('Deskripsi produk 5'),
      trailing: Text('Rp 500.000'),
    ), 
     Divider(),
    ListTile(
      leading: Icon(Icons.shopping_cart),
      title: Text('Produk 6'),
      subtitle: Text('Deskripsi produk 6'),
      trailing: Text('Rp 600.000'),
    ), 
     Divider(),
    ListTile(
      leading: Icon(Icons.shopping_cart),
      title: Text('Produk 7'),
      subtitle: Text('Deskripsi produk 7'),
      trailing: Text('Rp 700.000'),
    ),  
     Divider(),
    ListTile(
      leading: Icon(Icons.shopping_cart),
      title: Text('Produk 8'),
      subtitle: Text('Deskripsi produk 8'),
      trailing: Text('Rp 800.000'),
    ), 
     Divider(),
    ListTile(
      leading: Icon(Icons.shopping_cart),
      title: Text('Produk 9'),
      subtitle: Text('Deskripsi produk 9'),
      trailing: Text('Rp 900.000'),
    ),  
     Divider(),
    ListTile(
      leading: Icon(Icons.shopping_cart),
      title: Text('Produk 10'),
      subtitle: Text('Deskripsi produk 10'),
      trailing: Text('Rp 1.000.000'),
    ),   // Add your content here // Add your content here  // Add your content here // Add your content here  // Add your content here  // Add your content here // Add your content here  // Add your content here
                  ],
                  
                ),
                
              ),
            ],
          ),
        ),
      ),
    );
  }
}
