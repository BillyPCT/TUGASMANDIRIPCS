import 'package:flutter/material.dart';
import 'package:tugasmandiripcs/Beranda/beranda_view.dart';
import 'package:tugasmandiripcs/Inbox/inbox_view.dart';
import 'package:tugasmandiripcs/Isi/isiprofileenglish/profileenglish.dart';
import 'package:tugasmandiripcs/Isi/profile.dart';
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
                    "Pet Shop Animaly",
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
                "Job",
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
                        'Developer',
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
                        'Driver',
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
                        'Sales',
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
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        'Security',
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
                  onLongPress: () {
                  
                  },
                  child: Container(
                    width: 180,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        'Customer Service',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
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
              Image.network(
                'https://storage.googleapis.com/go-merchant-production.appspot.com/uploads/2022/03/a50b5a97cd9ee91826449bc79f51ace0_fe9477fa96bd2cbfd6da352cca822dcd_compressed.jpg',
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
                      'Developer',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                        height:
                            8), // memberikan jarak antara judul dan deskripsi
                    Text(
                      'Seseorang yang memiliki tugas sebagai perancang software, website, ataupun aplikasi.',
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
              Image.network(
                'https://awsimages.detik.net.id/community/media/visual/2020/06/13/menyetir-mobil.jpeg?w=700&q=90',
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
                      'Driver',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                        height:
                            8), // memberikan jarak antara judul dan deskripsi
                    Text(
                      ' Sopir (bahasa Prancis: chauffeur) atau pramudi adalah pengemudi profesional yang dibayar oleh majikan untuk mengemudi kendaraan bermotor.',
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
              Image.network(
                'https://crewdible-pub.s3.ap-southeast-1.amazonaws.com/blog/sales%20marketing%20adalah.jpg',
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
                      'Sales',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                        height:
                            8), // memberikan jarak antara judul dan deskripsi
                    Text(
                      'Sales adalah bagian dari aktivitas penjualan produk, barang, dan layanan yang dilakukan penjual ke pembeli.',
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
              Image.network(
                'https://www.suksesindo.com/beta/assets/upload/image/security.jpg',
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
                      'Security',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                        height:
                            8), // memberikan jarak antara judul dan deskripsi
                    Text(
                      'Satpam adalah satuan atau kelompok profesi pengemban fungsi kepolisian terbatas non yustisial yang dibentuk melalui perekrutan oleh badan usaha jasa',
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
              Image.network(
                'https://seputarkarir.com/wp-content/uploads/2021/04/Customer-Service.png',
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
                      'Customer Service',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                        height:
                            8), // memberikan jarak antara judul dan deskripsi
                    Text(
                      'Customer service memiliki tugas untuk memberikan pelayanan kepada pelanggan pada saat sebelum, selama, atau setelah pembelian produk atau layanan.',
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

