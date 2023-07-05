import 'package:flutter/material.dart';
import 'package:tugasmandiripcs/Isi/isiprofileenglish/JobDesk.dart';
import 'package:tugasmandiripcs/Isi/isiprofileenglish/akunenglish.dart';
import 'package:tugasmandiripcs/Isi/isiprofileenglish/bahasainggris.dart';
import 'package:tugasmandiripcs/Isi/isiprofileenglish/help.dart';
import 'package:tugasmandiripcs/Isi/isiprofileindo/Bantuan.dart';
import 'package:tugasmandiripcs/Isi/isiprofileindo/HistoryPekerjaan.dart';
import 'package:tugasmandiripcs/Isi/isiprofileindo/akun.dart';
import 'package:tugasmandiripcs/Isi/isiprofileindo/bahasa.dart';
import 'package:tugasmandiripcs/Isi/isiprofileindo/biodataprofile.dart';
import 'package:tugasmandiripcs/Isi/isiprofileindo/hubungi.dart';
import 'package:tugasmandiripcs/Isi/isiprofileindo/notifikasi.dart';
import 'package:tugasmandiripcs/Landing/landing.dart';
import 'package:tugasmandiripcs/komponenutama/A.dart';
import 'package:tugasmandiripcs/komponenutama/Aenglish.dart';
import 'package:tugasmandiripcs/komponenutama/b.dart';
import 'package:tugasmandiripcs/komponenutama/b1.dart';
import 'animasi.dart';

class TempatRouters {
  static Route<dynamic> jalannyaroutes(RouteSettings settings) {
    switch (settings.name) {
 case '/Aprofile':
        return SlideRightRoute(widget: Notifikasikelas()); 
        case '/Bprofile':
        return SlideRightRoute(widget:akun ());
        case '/Cprofile':
        return SlideRightRoute(widget:historypekerjaan ()); 
         case '/Dprofile':
        return SlideRightRoute(widget:bahasa ()); 
         case '/Eprofile':
        return SlideRightRoute(widget:Bantuan ()); 
        case '/hubungi':
        return SlideRightRoute(widget: hubungi()); 
         case '/bahasainggris':
        return SlideRightRoute(widget:bahasaInggris ()); 
case '/A':
        return SlideRightRoute(widget: A()); 
case '/Aenglish':
        return SlideRightRoute(widget: Aenglish()); 
        case '/Aenglish':
        return SlideRightRoute(widget: Aenglish()); 
        case '/help':
        return SlideRightRoute(widget: help()); 
        case '/jobdesk':
        return SlideRightRoute(widget: jobdesk()); 
        case '/akunenglish':
        return SlideRightRoute(widget: akunenglish()); 
case '/biodataprofile':
        return SlideRightRoute(widget: biodataprofile()); 
case '/splash':
        return SlideRightRoute(widget: Splashscreen()); 
case '/b1':
        return SlideRightRoute(widget: b1()); 
case '/landingpage':
        return SlideRightRoute(widget: LandingPage()); 

      default:
        return _kesalahanroute();
    }
  }

  static Route<dynamic> _kesalahanroute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: Text("Error")),
        body: Center(child: Text("Coba di cek routenya biasanya salah penulisan nama routes yang tidak sesuai")),
      );
    });
  }
}
