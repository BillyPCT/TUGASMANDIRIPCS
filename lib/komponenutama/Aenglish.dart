import 'package:flutter/material.dart';
import 'package:tugasmandiripcs/Beranda/beranda_view.dart';
import 'package:tugasmandiripcs/Inbox/inbox_view.dart';
import 'package:tugasmandiripcs/Isi/isiprofileenglish/profileenglish.dart';

import 'package:tugasmandiripcs/Landing/landing.dart';
import 'package:tugasmandiripcs/Pesanan/pesanan_view.dart';

class Aenglish extends StatelessWidget {
  const Aenglish({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Profileenglish(),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 129, 9, 9),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  Text(
                    "Welcome",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "PETSHOP ANIMALS ZERO POINT ONE",
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 50,
              decoration: BoxDecoration(
                  color: Color.fromARGB(134, 68, 137, 255),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  Icon(Icons.search),
                  Container(
                    alignment: Alignment.topRight,
                    width: 250,
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "Search", border: InputBorder.none),
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.filter_list),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                color: Color.fromARGB(134, 68, 137, 255),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    categorijob(),
                    // deskripsijob(),
                    // itemjob(),
                   
                  ]),
            ),
          ],
        ),
      )),
    );
  }
}

class categorijob extends StatelessWidget {
  const categorijob({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Type",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text(
                "All",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              )
            ],
          ),
        ),
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(children: [
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                GestureDetector(
                  onTap: () {
                 
                  },
                  child: Container(
                    width: 120,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        'Dry Food',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                  
                  },
                  child: Container(
                    width: 120,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        'Semi-Moist Food',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
               
                  },
                  child: Container(
                    width: 120,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        'Wet Food ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                // GestureDetector(
                //   onTap: () {
                  
                //   },
                  // child: Container(
                  //   width: 120,
                  //   height: 40,
                  //   decoration: BoxDecoration(
                  //     color: Colors.purple,
                  //     borderRadius: BorderRadius.circular(10),
                  //   ),
                  //   child: Center(
                  //     child: Text(
                  //       'Security',
                  //       style: TextStyle(
                  //         color: Colors.white,
                  //         fontSize: 16,
                  //         fontWeight: FontWeight.bold,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                // ),
                // GestureDetector(
                //   onLongPress: () {
                  
                //   },
                //   child: Container(
                //     width: 180,
                //     height: 40,
                //     decoration: BoxDecoration(
                //       color: Colors.red,
                //       borderRadius: BorderRadius.circular(10),
                //     ),
                //     child: Center(
                //       child: Text(
                //         'Customer Service',
                //         style: TextStyle(
                //           color: Colors.white,
                //           fontSize: 16,
                //           fontWeight: FontWeight.bold,
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          ]),
        ),
        SizedBox(height: 16),
        Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Widget Image untuk menampilkan gambar
              Image.asset(
                "image/Makanan-Kucing-Basah.jpg",
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
              SizedBox(
                  width:
                      16), // memberikan jarak antara gambar dan teks deskripsi
              // Widget Expanded untuk menampilkan deskripsi berita

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Dry Food',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                        height:
                            8), // memberikan jarak antara judul dan deskripsi
                    Text(
                      'Dry Food is made with a small amount of water so that it lasts a long time in storage and has a crispness so that it has the benefit of helping clean teeth when cats chew their dry food kibble',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 16),
        Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Widget Image untuk menampilkan gambar
              Image.asset(
                "image/Makanan-Kucing-Semi-Moist.jpg",
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
              SizedBox(
                  width:
                      16), // memberikan jarak antara gambar dan teks deskripsi
              // Widget Expanded untuk menampilkan deskripsi berita
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Semi Moist Food',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                        height:
                            8), // memberikan jarak antara judul dan deskripsi
                    Text(
                      ' Semi Moist is cat food that has a soft and chewy texture.',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 16),
        Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Widget Image untuk menampilkan gambar
              Image.asset(
                "assets/image/Makanan-Kucing-Kering.jpg",
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
              SizedBox(
                  width:
                      16), // memberikan jarak antara gambar dan teks deskripsi
              // Widget Expanded untuk menampilkan deskripsi berita
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Wet Food',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                        height:
                            8), // memberikan jarak antara judul dan deskripsi
                    Text(
                      'Wet food is food that has a complete and balanced nutritional content, has the benefit of cleaning teeth because of its soft texture.',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

