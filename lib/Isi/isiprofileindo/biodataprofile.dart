import 'package:flutter/material.dart';
class biodataprofile extends StatelessWidget {
  const biodataprofile({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/image/1.png'),
            ),
            SizedBox(height: 20),
            Text(
              'Admin Pet Store',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                '"PET SHOP STORE"',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20),
            
            
            Container(              
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  ListTile(
                    leading: Icon(Icons.email),
                    title: Text('admin@gmail.com'),
                  ),
                   Divider(
                   color: Colors.grey[400],
                   thickness: 10,
                   ),
                  ListTile(
                    leading: Icon(Icons.phone),
                    title: Text('089690795500'),
                  ),
                   Divider(
                   color: Colors.grey[400],
                   thickness: 10,
                   ),
                  ListTile(
                    leading: Icon(Icons.location_on),
                    title: Text('Indonesia'),
                  ),
                   Divider(
                   color: Colors.grey[400],
                   thickness: 10,
                   ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, 'kembali ke beranda');
              },
              child: 
              Text("Kembali"),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}