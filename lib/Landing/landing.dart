import 'package:flutter/material.dart';
import 'package:tugasmandiripcs/Beranda/beranda_view.dart';
import 'package:tugasmandiripcs/Inbox/inbox_view.dart';
import 'package:tugasmandiripcs/Pesanan/pesanan_view.dart';
import 'package:tugasmandiripcs/constant.dart';
import 'package:tugasmandiripcs/komponenutama/A.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _bottomNavCurrentIndex = 0;
  List<Widget> _container = [
    A(),
    BerandaPage(),
    PesananPage(),
    InboxPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _container[_bottomNavCurrentIndex],
      bottomNavigationBar: _buildBottomNavigation(),
    );
  }

  Widget _buildBottomNavigation() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        setState(() {
          _bottomNavCurrentIndex = index;
        });
      },
      currentIndex: _bottomNavCurrentIndex,
      items: [
        BottomNavigationBarItem(
          activeIcon: Icon(
            Icons.home,
            color: FinancePalette.green,
          ),
          icon: Icon(
            Icons.home,
            color: Colors.grey,
          ),
          label: 'Beranda',
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(
            Icons.assignment,
            color: FinancePalette.green,
          ),
          icon: Icon(
            Icons.assignment,
            color: Colors.grey,
          ),
          label: 'Pesanan',
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(
            Icons.mail,
            color: FinancePalette.green,
          ),
          icon: Icon(
            Icons.mail,
            color: Colors.grey,
          ),
          label: 'Inbox',
        ),
        // BottomNavigationBarItem(
        //   activeIcon: Icon(
        //     Icons.person,
        //     color: FinancePalette.green,
        //   ),
        //   icon: Icon(
        //     Icons.person,
        //     color: Colors.grey,
        //   ),
        //   label: 'Akun',

        // ),
      ],
    );
  }
}
