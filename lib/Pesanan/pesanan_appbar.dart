import 'package:flutter/material.dart';

class PesananAppBar extends AppBar {
  PesananAppBar()
      : super(
            elevation: 0.25,
            backgroundColor: Colors.white,
            flexibleSpace: _buildPesananAppBar());

  static Widget _buildPesananAppBar() {
    return Container(
      padding: EdgeInsets.only(left: 16.0, right: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 50.0, bottom: 100.0),
          ),
          Text(
            "Pesanan",
            style: TextStyle(color: Colors.black, fontSize: 20.0),
          ),
          Container(
            child: Row(
              children: [
                Container(
                  height: 28.0,
                  width: 28.0,
                  padding: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100.0)),
                      color: Colors.orangeAccent),
                  alignment: Alignment.centerRight,
                  child: Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.black,
                    size: 16.0,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
