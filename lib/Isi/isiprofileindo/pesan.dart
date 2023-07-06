import 'package:flutter/material.dart';

class pesan extends StatefulWidget {
  const pesan({Key? key});

  @override
  State<pesan> createState() => _pesanState();
}

class _pesanState extends State<pesan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pesan"),
        backgroundColor: Colors.amber,
      ),
      body: Container(
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: [
            Container(
              padding: EdgeInsets.only(left: 16.0, top: 16.0, right: 16.0),
              color: Colors.amber,
              child: Column(
                children: [],
              ),
            ),
            Container(
              color: Colors.amber,
              margin: EdgeInsets.only(top: 16.0),
              child: Column(
                children: [],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
