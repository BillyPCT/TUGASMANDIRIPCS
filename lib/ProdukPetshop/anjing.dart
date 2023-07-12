import 'package:flutter/material.dart';
import 'package:tugasmandiripcs/komponenutama/A.dart';

import '../main.dart';

class DetailDog extends StatefulWidget {
  final String productName;

  const DetailDog({Key? key, required this.productName});

  @override
  _DetailDogState createState() => _DetailDogState();
}

class _DetailDogState extends State<DetailDog> {
  late Product _product1;
  late Product _product2;

  @override
  void initState() {
    super.initState();
    _product1 = Product(
      imageUrl:
          'https://cf.shopee.co.id/file/id-11134207-23020-y8z63i6x7hnv36',
      name: 'persia kitten 2 bulan',
      price: 'Rp 800.000',
      description:
          'persia medium.',
    );
    _product2 = Product(
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTop-e_jXSsA395CxFHS3_MltY9b34JGpVO-g&usqp=CAU',
      name: 'anggora kitten',
      price: 'Rp 650.000',
      description:
          'anggora jantan.',
    );
  }

  void _orderProduct(Product product) {
    setState(() {
      product.isOrdered = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.productName),
      ),
      body: Column(
        children: [
          buildProductItem(_product1),
          SizedBox(height: 16.0),
          buildProductItem(_product2),
        ],
      ),
    );
  }

  Widget buildProductItem(Product product) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Gambar makanan kucing
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: NetworkImage(product.imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 16.0),
          // Kotak teks
          Expanded(
            child: Container(
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Nama produk
                  Text(
                    product.name,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  // Harga
                  Text(
                    product.price,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  // Keterangan
                  Text(
                    product.description,
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(height: 16.0),
                  // Tombol pesan
                  ElevatedButton(
                    onPressed: product.isOrdered ? null : () => _orderProduct(product),
                    child: Text('Pesan'),
                  ),
                  SizedBox(height: 8.0),
                  // Pesanan berhasil
                  if (product.isOrdered)
                    Text(
                      'Berhasil dipesan!',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}