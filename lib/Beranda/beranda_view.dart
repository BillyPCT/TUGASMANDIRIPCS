import 'package:flutter/material.dart';
import 'package:tugasmandiripcs/Beranda/beranda_appbar.dart';
import 'package:tugasmandiripcs/constant.dart';

class BerandaPage extends StatefulWidget {
  const BerandaPage({super.key});

  @override
  State<BerandaPage> createState() => _BerandaPageState();
}

class _BerandaPageState extends State<BerandaPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: FinanceAppBar(),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}