import 'package:flutter/material.dart';
import 'package:tugasmandiripcs/komponenutama/A.dart';

import '../main.dart';

class ProductDetailPage extends StatefulWidget {
  final String productName;

  const ProductDetailPage({Key? key, required this.productName});

  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  late Product _product1;
  late Product _product2;

  @override
  void initState() {
    super.initState();
    _product1 = Product(
      imageUrl:
          'https://res.cloudinary.com/ruparupa-com/image/upload//f_auto,q_auto:eco/v1638163158/Products/10108031_1.jpg',
      name: 'Royal Canin 4 kg',
      price: 'Rp 649.000',
      description:
          'Royal Canin adalah makanan berkualitas tinggi yang diformulasikan khusus untuk kesehatan dan kebutuhan nutrisi kucing. Produk ini mengandung bahan-bahan alami dan tidak mengandung pewarna, pengawet, atau tambahan buatan.',
    );
    _product2 = Product(
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-MLmlZ3-E2SuEGOPMkOxV4J_ICNA9jQor7g&usqp=CAU',
      name: 'Whiskas 1.5 kg',
      price: 'Rp 99.000',
      description:
          'Whiskas 1.5 kg adalah makanan kucing yang mengandung nutrisi lengkap dan seimbang untuk memenuhi kebutuhan gizi kucing Anda. Diformulasikan dengan bahan-bahan berkualitas tinggi untuk menjaga kesehatan dan vitalitas kucing Anda.',
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