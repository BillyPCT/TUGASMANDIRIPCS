import 'package:flutter/material.dart';
import 'package:tugasmandiripcs/Pesanan/pesanan_appbar.dart';
import 'package:tugasmandiripcs/constant.dart';

class PesananPage extends StatefulWidget {
  const PesananPage({super.key});

  @override
  State<PesananPage> createState() => _PesananPageState();
}

class _PesananPageState extends State<PesananPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PesananAppBar(),
        backgroundColor: FinancePalette.grey,
        body: Container(
          child: ListView(
            physics: ClampingScrollPhysics(),
            children: [
              Container(
                padding: EdgeInsets.only(left: 16.0, top: 16.0, right: 16.0),
                color: Colors.white,
                child: Column(
                  children: [

                  ],
                ),
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.only(top: 16.0),
                child: Column(
                  children: [

                  ],
                ),
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.only(top: 16.0),
                child: Column(
                  children: [

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  
}