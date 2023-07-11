import 'package:flutter/material.dart';
import 'package:tugasmandiripcs/Beranda/beranda_view.dart';
import 'package:tugasmandiripcs/Inbox/inbox_view.dart';
import 'package:tugasmandiripcs/Pesanan/pesanan_view.dart';
import 'package:tugasmandiripcs/komponenutama/profile.dart';
import 'package:tugasmandiripcs/komponenutama/DetailProduk/makanankucing.dart';



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
    padding: EdgeInsets.symmetric(horizontal: 16),
    height: 60,
    child: Row(
      children: [
        CircleAvatar(
          radius: 20,
          backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThRAkov-sEJLwLmFu6K2PJdEWFgY7W2TDFsyVc4qZcB8BWeMbPYc3JsActOeSwOhLTqtI&usqp=CAU'),
        ),
        SizedBox(width: 12),
        Text(
          'Makanan Kucing',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
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
    padding: EdgeInsets.symmetric(horizontal: 16),
    height: 60,
    child: Row(
      children: [
        CircleAvatar(
          radius: 20,
          backgroundImage: NetworkImage('data:image/jpeg;base64,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'),
        ),
        SizedBox(width: 12),
        Text(
          'Makanan Anjing',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
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
    padding: EdgeInsets.symmetric(horizontal: 16),
    height: 60,
    child: Row(
      children: [
        CircleAvatar(
          radius: 20,
          backgroundImage: NetworkImage('data:image/jpeg;base64,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'),
        ),
        SizedBox(width: 12),
        Text(
          'Kucing',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
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
    padding: EdgeInsets.symmetric(horizontal: 16),
    height: 60,
    child: Row(
      children: [
        CircleAvatar(
          radius: 20,
          backgroundImage: NetworkImage('data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBUUFBgUFBUYGRgaHBsZGxgbGhscHR4bGxsbGiAdGh0bIy0kGx4pHiAbJjcmKS4wNDQ0GyM5PzkxPi0yNDABCwsLEA8QHhISHTIrJCk7MjI1MjIyMjIyMjIyMjIyMjIyMjIyMjIyMj4yMjIyMjIyMjIyMjIyMjIyMjIyMjIyMv/AABEIAIwBaAMBIgACEQEDEQH/xAAcAAABBAMBAAAAAAAAAAAAAAAAAgUGBwEDBAj/xABCEAACAQIEBAQEAwUGAwkAAAABAhEAAwQSITEFBkFRImFxgRORobEyQvAHFFLB0SNicoLh8TNDkhUkJVOisrPC0v/EABkBAQEBAQEBAAAAAAAAAAAAAAACAQMEBf/EACIRAAICAgMBAAIDAAAAAAAAAAABAhEDIRIxQVEiYROBkf/aAAwDAQACEQMRAD8AsiiiiuR6gooooAooooAooooAooooAooooAooooAooooAooooAooooAooooAooooAooooAooooAooooAooooAooooAooooAooooAooooAooooAooooAooooAooooAooooAooooAooooAorE0TQBNYmsE1iaAXNZrWDSgaAVRSZrBcdxQC6KRm69O9YzUBsorXmpQNAKorE0TQGaKxNYmgFUUmaM1AKopM0qaAKKKKAKKKKAKKKKAKKKKAKKJrE0BmisTRNAZorE0TQGaKxNZoAooooAooooAorBNJzUAuikTWZoBVYNJzUu0dYoH0YFtj0ph5s4rcwqL8JULt1aTHQQBEkn/Y1Kc1QDm661y6CuqJoO89W+49PXScj4rXYx/lKmRLG8w49sw+O7NBJVMqIsDugzE+9NnAufcTaxBe67PbaFdHJbKB+ZOzDX1mD0I6eM48WEZkyh2m2QywyCN1B3BjfpWOVeRP3i3+83r6paOq5ZzEz1ZwFUek66aVOOVRbkVnjUlGJcHLPGbWMti5bRlQyAXjMSN9ATFPuWoBy1iBZRrdjJCEKYII1AOvnBn33qZcKxpu28xABkggeRMH5R7yK3HmUnVUzjPG47Ix+0bF4yxZW/hGChGlxlV8ynSDOwG5jXzqmcVx69fxBxF1xncBYI8IGwyrsoG+vcnUk16M4tci2xidhETqSBt71THHuWMHdFy9hMSpdZdraMjj1XxArr1mO0bV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'),
        ),
        SizedBox(width: 12),
        Text(
          'Anjing',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  ),
),


             GestureDetector(
  onTap: () {
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
    padding: EdgeInsets.symmetric(horizontal: 16),
    height: 60,
    child: Row(
      children: [
        CircleAvatar(
          radius: 20,
          backgroundImage: NetworkImage('data:image/jpeg;base64,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'),
        ),
        SizedBox(width: 12),
        Text(
          'Obat Hewan',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
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

class Product {
  final String imageUrl;
  final String name;
  final String price;
  final String description;
  bool isOrdered;

  Product({
    required this.imageUrl,
    required this.name,
    required this.price,
    required this.description,
    this.isOrdered = false,
  });
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
