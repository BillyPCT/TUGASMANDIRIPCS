import 'package:flutter/material.dart';
import 'package:tugasmandiripcs/Beranda/beranda_view.dart';
import 'package:tugasmandiripcs/Inbox/inbox_view.dart';
import 'package:tugasmandiripcs/Isi/isiprofileenglish/profileenglish.dart';
import 'package:tugasmandiripcs/Isi/profile.dart';
import 'package:tugasmandiripcs/Landing/landing.dart';
import 'package:tugasmandiripcs/Pesanan/pesanan_view.dart';

class A extends StatelessWidget {
  const A({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Profile(),
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
                    "Selamat Datang",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Pet's Shop Store",
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
                          hintText: "Pencarian", border: InputBorder.none),
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
                    // BerandaPage(),
                    // PesananPage(),
                    // InboxPage()
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
                "Popular",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text(
                "Semua Jenis",
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
                        'Makanan Kucing',
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
                        'Makanan Anjing',
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
                        'Kucing',
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
                        'Anjing',
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
                    width: 120,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        'Obat Hewan',
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
               'https://o-cdn-cas.sirclocdn.com/parenting/images/Makanan_Kucing_Felibite.width-800.format-webp.webp',
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
                      'Makanan Kucing',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                        height:
                            8), // memberikan jarak antara judul dan deskripsi
                    Text(
'Makanan Kucing di Pet Shop dijamin berkualitas dan juga pakan kucing terbaik yang sudah melalui survei pemeriksaan kesehatan.',
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
'https://cdn1.productnation.co/stg/sites/5/5e98f56047c70.jpeg',
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
                      'Makanan Anjing',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                        height:
                            8), // memberikan jarak antara judul dan deskripsi
                    Text(
'Makanan anjing yang kami jual murah loh, dan untuk kualitas nya nggak murahan ya karna kita jamin kalo produk tidak sesuai akan kembalikan 100% uang anda',
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
                      'Kucing',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                        height:
                            8), // memberikan jarak antara judul dan deskripsi
                    Text(
"Selain kita menjual makanan kucing di pet s shop store kita jual beraneka jenis kucing bagi pecinta kucing, dan juga cat lovers akan mendapatkan perawatan di kucing di toko kami satu bulan ya.",
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
                      'Anjing',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                        height:
                            8), // memberikan jarak antara judul dan deskripsi
                    Text(
"Bingung mau melihara anjing apa. Yuk dog lovers tanyakan kami di pet shop store kira-kira kamu cocok melihara hewan apa ya.",
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
                      'Obat hewan',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                        height:
                            8), // memberikan jarak antara judul dan deskripsi
                    Text(
"Halo animals lovers, kalian bingung jika hewan kalian sakit mau pesan dimana ya obatnya, dan berapa ya biayanya, dan juga khawatir hewan yang kamu sayangi akan menderita, yuk konsultasikan pada kita ya.",
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

// class deskripsijob extends StatelessWidget {
//   const deskripsijob({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Padding(
//           padding: EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 20),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 "Popular Job",
//                 style: TextStyle(
//                     fontSize: 25,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black),
//               ),
//               Text(
//                 "Semua Job Tersedia",
//                 style: TextStyle(
//                     fontSize: 15,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black),
//               )
//             ],
//           ),
//         ),
//         SingleChildScrollView(
//           scrollDirection: Axis.horizontal,
//           child: Row(
//             children: [
//               Container(
//                 margin: EdgeInsets.all(10),
//                 padding: EdgeInsets.all(5),
//                 height: 100,
//                 width: 150,
//                 decoration: BoxDecoration(boxShadow: [
//                   BoxShadow(
//                       color: Colors.grey.withOpacity(0.5),
//                       spreadRadius: 1,
//                       blurRadius: 8)
//                 ]),
//                 child: Image.asset("assets/image/th.jpg"),
//               ),
//               Container(
//                 margin: EdgeInsets.all(10),
//                 padding: EdgeInsets.all(5),
//                 height: 100,
//                 width: 150,
//                 decoration: BoxDecoration(boxShadow: [
//                   BoxShadow(
//                       color: Colors.grey.withOpacity(0.5),
//                       spreadRadius: 1,
//                       blurRadius: 8)
//                 ]),
//                 child: Image.asset("assets/image/th.jpg"),
//               ),
//               Container(
//                 margin: EdgeInsets.all(10),
//                 padding: EdgeInsets.all(5),
//                 height: 100,
//                 width: 150,
//                 decoration: BoxDecoration(boxShadow: [
//                   BoxShadow(
//                       color: Colors.grey.withOpacity(0.5),
//                       spreadRadius: 1,
//                       blurRadius: 8)
//                 ]),
//                 child: Image.asset("assets/image/th.jpg"),
//               ),
//               Container(
//                 margin: EdgeInsets.all(10),
//                 padding: EdgeInsets.all(5),
//                 height: 100,
//                 width: 150,
//                 decoration: BoxDecoration(boxShadow: [
//                   BoxShadow(
//                       color: Colors.grey.withOpacity(0.5),
//                       spreadRadius: 1,
//                       blurRadius: 8)
//                 ]),
//                 child: Image.asset("assets/image/th.jpg"),
//               ),
//             ],
//           ),
//         )
//       ],
//     );
//   }
// }

// class itemjob extends StatelessWidget {
//   const itemjob({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Padding(
//           padding: EdgeInsets.only(left: 10, right: 10, top: 10),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 "Job",
//                 style: TextStyle(
//                     fontSize: 25,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black),
//               ),
//               Text(
//                 "Semua Jenis",
//                 style: TextStyle(
//                     fontSize: 15,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black),
//               )
//             ],
//           ),
//         ),
//         GridView.count(
//           crossAxisCount: 4,
//           childAspectRatio: 0.8,
//           shrinkWrap: true,
//           children: [
//             Container(
//               padding: EdgeInsets.symmetric(horizontal: 10),
//               decoration: BoxDecoration(
//                   color: Color.fromARGB(255, 20, 208, 170),
//                   borderRadius: BorderRadius.circular(10),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey.withOpacity(0.5),
//                       spreadRadius: 1,
//                       blurRadius: 8,
//                     )
//                   ]),
//               child: Column(
//                 children: [
//                   InkWell(
//                     onTap: () {},
//                     child: Container(
//                       margin: EdgeInsets.all(10),
//                       child: Image.asset("assets/image/th.jpg"),
//                       height: 110,
//                       width: 110,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               padding: EdgeInsets.symmetric(horizontal: 10),
//               decoration: BoxDecoration(
//                   color: Color.fromARGB(255, 20, 208, 170),
//                   borderRadius: BorderRadius.circular(10),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey.withOpacity(0.5),
//                       spreadRadius: 1,
//                       blurRadius: 8,
//                     )
//                   ]),
//               child: Column(
//                 children: [
//                   InkWell(
//                     onTap: () {},
//                     child: Container(
//                       margin: EdgeInsets.all(10),
//                       child: Image.asset("assets/image/th.jpg"),
//                       height: 110,
//                       width: 110,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               padding: EdgeInsets.symmetric(horizontal: 10),
//               decoration: BoxDecoration(
//                   color: Color.fromARGB(255, 20, 208, 170),
//                   borderRadius: BorderRadius.circular(10),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey.withOpacity(0.5),
//                       spreadRadius: 1,
//                       blurRadius: 8,
//                     )
//                   ]),
//               child: Column(
//                 children: [
//                   InkWell(
//                     onTap: () {},
//                     child: Container(
//                       margin: EdgeInsets.all(10),
//                       child: Image.asset("assets/image/th.jpg"),
//                       height: 110,
//                       width: 110,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               padding: EdgeInsets.symmetric(horizontal: 10),
//               decoration: BoxDecoration(
//                   color: Color.fromARGB(255, 20, 208, 170),
//                   borderRadius: BorderRadius.circular(10),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey.withOpacity(0.5),
//                       spreadRadius: 1,
//                       blurRadius: 8,
//                     )
//                   ]),
//               child: Column(
//                 children: [
//                   InkWell(
//                     onTap: () {},
//                     child: Container(
//                       margin: EdgeInsets.all(10),
//                       child: Image.asset("assets/image/th.jpg"),
//                       height: 110,
//                       width: 110,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               padding: EdgeInsets.symmetric(horizontal: 10),
//               decoration: BoxDecoration(
//                   color: Color.fromARGB(255, 20, 208, 170),
//                   borderRadius: BorderRadius.circular(10),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey.withOpacity(0.5),
//                       spreadRadius: 1,
//                       blurRadius: 8,
//                     )
//                   ]),
//               child: Column(
//                 children: [
//                   InkWell(
//                     onTap: () {},
//                     child: Container(
//                       margin: EdgeInsets.all(10),
//                       child: Image.asset("assets/image/th.jpg"),
//                       height: 110,
//                       width: 110,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               padding: EdgeInsets.symmetric(horizontal: 10),
//               decoration: BoxDecoration(
//                   color: Color.fromARGB(255, 20, 208, 170),
//                   borderRadius: BorderRadius.circular(10),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey.withOpacity(0.5),
//                       spreadRadius: 1,
//                       blurRadius: 8,
//                     )
//                   ]),
//               child: Column(
//                 children: [
//                   InkWell(
//                     onTap: () {},
//                     child: Container(
//                       margin: EdgeInsets.all(10),
//                       child: Image.asset("assets/image/th.jpg"),
//                       height: 110,
//                       width: 110,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               padding: EdgeInsets.symmetric(horizontal: 10),
//               decoration: BoxDecoration(
//                   color: Color.fromARGB(255, 20, 208, 170),
//                   borderRadius: BorderRadius.circular(10),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey.withOpacity(0.5),
//                       spreadRadius: 1,
//                       blurRadius: 8,
//                     )
//                   ]),
//               child: Column(
//                 children: [
//                   InkWell(
//                     onTap: () {},
//                     child: Container(
//                       margin: EdgeInsets.all(10),
//                       child: Image.asset("assets/image/th.jpg"),
//                       height: 110,
//                       width: 110,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               padding: EdgeInsets.symmetric(horizontal: 10),
//               decoration: BoxDecoration(
//                   color: Color.fromARGB(255, 20, 208, 170),
//                   borderRadius: BorderRadius.circular(10),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey.withOpacity(0.5),
//                       spreadRadius: 1,
//                       blurRadius: 8,
//                     )
//                   ]),
//               child: Column(
//                 children: [
//                   InkWell(
//                     onTap: () {},
//                     child: Container(
//                       margin: EdgeInsets.all(10),
//                       child: Image.asset("assets/image/th.jpg"),
//                       height: 110,
//                       width: 110,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         )
//       ],
//     );
//   }
// }
