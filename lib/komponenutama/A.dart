import 'package:flutter/material.dart';
import 'package:tugasmandiripcs/Beranda/beranda_view.dart';
import 'package:tugasmandiripcs/Inbox/inbox_view.dart';
import 'package:tugasmandiripcs/Pesanan/pesanan_view.dart';
import 'package:tugasmandiripcs/komponenutama/profile.dart';

class A extends StatelessWidget {
  const A({Key? key});

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
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Pet's Shop Store",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: 50,
                decoration: BoxDecoration(
                  color: Color.fromARGB(134, 68, 137, 255),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    Container(
                      alignment: Alignment.topRight,
                      width: 250,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Pencarian",
                          border: InputBorder.none,
                        ),
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
                    PetShopCategory(),
                    // deskripsijob(),
                    // itemjob(),
                    // BerandaPage(),
                    // PesananPage(),
                    // InboxPage()
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

class PetShopCategory extends StatelessWidget {
  const PetShopCategory({Key? key});

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
                  color: Colors.black,
                ),
              ),
              Text(
                "Semua Jenis",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductDetailPage(
                        productName: 'Makanan Kucing',
                      ),
                    ),
                  );
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductDetailPage(
                        productName: 'Makanan Anjing',
                      ),
                    ),
                  );
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductDetailPage(
                        productName: 'Kucing',
                      ),
                    ),
                  );
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductDetailPage(
                        productName: 'Anjing',
                      ),
                    ),
                  );
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductDetailPage(
                        productName: 'Obat Hewan',
                      ),
                    ),
                  );
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
        ),
      ],
    );
  }
}

class ProductDetailPage extends StatelessWidget {
  final String productName;

  const ProductDetailPage({Key? key, required this.productName});

  @override
  Widget build(BuildContext context) {
    // Implementasi tampilan halaman detail produk
    return Scaffold(
      appBar: AppBar(
        title: Text(productName),
      ),
      body: Container(
        child: Text('Product Detail Page'),
      ),
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
