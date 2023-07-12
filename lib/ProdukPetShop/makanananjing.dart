import 'package:flutter/material.dart';
import 'package:tugasmandiripcs/komponenutama/A.dart';

import '../main.dart';

class ProductDetail extends StatefulWidget {
  final String productName;

  const ProductDetail({Key? key, required this.productName});

  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  late Product _product1;
  late Product _product2;

  @override
  void initState() {
    super.initState();
    _product1 = Product(
      imageUrl:
          'data:image/jpeg;base64,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4nZp0267ukNfIsmPBFggjsN/Jc10EXBxbqDo1m8Cv5epbcLkZuea6qYB2aNA4UPIEIbKhQYp5KeteIga9pa9oc08D9aHtWHdbetO629a1FKraSreP5FMLuchcGu6ni/RmHDU6EFciXkpjAHNbq060HR0D1i8p9avfdbetO629amNt8YZyPEfKS1LJryvGcmpmNySCR9X95nE3Vs4WAdFs2HsCSWTKGiCP75b4R7M3WV6TiXRv30sMOI2CgfgrVl4QS0YnSPA569S4ljx7I7v1UeYNhjEcYDQ0UAF82DDZLzw3L7i4Q/+0A9F/ipWCeyNuXNfasRrfCwHA6sqUOfSFo2A6dQp5CAKP3Y3rXzu1vWvPEKYuLBtGZmLdFM8OjLHvGaLmwMvSqN39pTd57D1LvsnaapwN7tdT6FxYdl4Zry63uJDmjM8uDA8EODAd2hKYXARRzMkY+msZkDCAdLe7wzrvefz1VpaTZItWEtIb+ANDnDFqbOU/VE5SzmaTMSE2OyhEwTtJIFNuyvnKwYt1Qu0vwfiQrjhfs2ea35BUrnucZzcer3UGjt/Ib/QrvBHla1u+gB6hSm3ID65lSlevuUa3ZAHOZW1ERX6rkREREREREREREREREUfEYVj6zsa+t2YA/NSEWCAc1kGSg964PEx+7aneuDxMfu2qci1wN2BbaR+0qD3rg8TH7tqd64PEx+7apyJgbsCaR+0qD3rg8TH7tq+97IPEx+7apqJo27AmkftKhd7IPEx+7avneuDxMfu2qciaNuwJpH7SoPeuDxMfu2p3rg8TH7tqnImjbsCaR+0qF3sg8RF7tv5L53rg8RF7tv5KcizgbsCaR/4j1qD3qg8RF7tv5J3qg8RF7tv5Kcixo2bB1JpH7T1qD3qg8RF7tv5J3qw/iIvdt/JTkTRs2DqCaR+09aiQ4GJhzNjY09YaAfWFLRFsABktSSc0REWVhERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERf/2Q==',
      name: 'pedigree',
      price: 'Rp 230.000',
      description:
          ' pedigree adalah makanan berkualitas tinggi yang diformulasikan khusus untuk kesehatan dan kebutuhan nutrisi anjing. Produk ini mengandung bahan-bahan alami dan tidak mengandung pewarna, pengawet, atau tambahan buatan.',
    );
    _product2 = Product(
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtA6JyZf9LB6vc6HLP2ssdrewyan8VpTliTQ&usqp=CAU',
      name: 'dog choize 1.5 kg',
      price: 'Rp 210.000',
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