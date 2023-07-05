import 'package:flutter/material.dart';

class b1 extends StatelessWidget {
  const b1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset(
                "/image/th.jpg",
                height: 300,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Text(
                "Pet Shop",
                style: TextStyle(
                    color: Colors.amber,
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            InkWell(
              onDoubleTap: () {
                Navigator.pushNamed(context, "/A");
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 80, vertical: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.green),
                child: Text("Enter"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
