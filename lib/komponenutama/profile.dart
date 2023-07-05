import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromARGB(255, 223, 216, 214),
      child: ListView(padding: EdgeInsets.zero, children: [
        UserAccountsDrawerHeader(
          accountName: Text(
            "Billy Kristian",
          ),
          accountEmail: Text("billykr67@gmail.com"),
          currentAccountPicture: CircleAvatar(
            child: ClipOval(
              child: Image.asset(
                "assets/image/1.png",
                height: 90,
                width: 90,
                fit: BoxFit.cover,
              ),
            ),
          ),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "assets/image/bg1.jpg",
                  ),
                  fit: BoxFit.cover)),
          onDetailsPressed: () {
            Navigator.pushNamed(context, "/biodataprofile");
          },
        ),
        ListTile(
          leading: Icon(Icons.textsms),
          title: Text("Notifikasi"),
          trailing: Icon(
            Icons.arrow_forward,
          ),
          onTap: () {
            Navigator.pushNamed(context, "/Aprofile");
          },
        ),
        SizedBox(
          height: 10,
        ),
        Divider(
          color: Colors.black,
          thickness: 1,
        ),
        ListTile(
          leading: Icon(Icons.key),
          title: Text("Akun"),
          trailing: Icon(
            Icons.arrow_forward,
          ),
          onTap: () {
            Navigator.pushNamed(context, "/Bprofile");
          },
        ),
        SizedBox(
          height: 10,
        ),
        Divider(
          color: Colors.black,
          thickness: 1,
        ),
        ListTile(
          leading: Icon(Icons.desk),
          title: Text("History Pekerjaan"),
          trailing: Icon(
            Icons.arrow_forward,
          ),
          onTap: () {
            Navigator.pushNamed(context, "/Cprofile");
          },
        ),
        Divider(
          color: Colors.black,
          thickness: 1,
        ),
        SizedBox(
          height: 10,
        ),
        ListTile(
          leading: Icon(Icons.language),
          title: Text("Bahasa Aplikasi"),
          trailing: Icon(
            Icons.arrow_forward,
          ),
          onTap: () {
            Navigator.pushNamed(context, "/Dprofile");
          },
        ),
        Divider(
          color: Colors.black,
          thickness: 1,
        ),
        SizedBox(
          height: 10,
        ),
        ListTile(
          leading: Icon(Icons.help),
          title: Text("Bantuan"),
          trailing: Icon(
            Icons.arrow_forward,
          ),
          onTap: () {
            Navigator.pushNamed(context, "/Eprofile");
          },
        ),
        Divider(
          color: Colors.black,
          thickness: 1,
        ),
        SizedBox(
          height: 10,
        ),
        ListTile(
          leading: Icon(Icons.exit_to_app),
          title: Text("Keluar"),
          onTap: () {
            Navigator.pushNamed(context, "/splash");
          },
        ),
      ]),
    );
  }
} 
// onPressed: () {
            //   Navigator.pushNamed(context, "/splash");
            // },
//return Scaffold(
//       body: Container(
        
//       width: 250,
      
//       color: Color.fromARGB(255, 14, 130, 145),
//       child:SafeArea(
//       child: Column(
        
//         children: [
          
//           ListTile(
//             leading: CircleAvatar(backgroundColor: Colors.white24,
//             child: Icon(CupertinoIcons.person,color: Colors.white,),
//             ),
// title: Text("Billy Kristian",
// style: TextStyle(color: Colors.white),
//           ),
//           subtitle: Text("Leader PT.Senyum Kecil",
// style: TextStyle(color: Colors.white),
//           ),
          
//           ),
         
//            SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.pop(context, 'kembali ke beranda');
//               },
//               child: Text("Kembali"),
//             ),
//         ],
//       ),
//       ),
    
//       ),
      
//     );
