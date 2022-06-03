import 'package:flutter/material.dart';
import 'package:kelola_sampah/page/dashboard.dart';
import 'package:kelola_sampah/page/home_page.dart';

class Berita extends StatefulWidget {
  const Berita({super.key});

  @override
  State<Berita> createState() => _BeritaState();
}

class _BeritaState extends State<Berita> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(""),
          backgroundColor: Color.fromARGB(255, 13, 109, 204),
        ),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              SizedBox(height: 40),
              Text(
                "SIMS",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Text(
                "System Informasi Manajamen Sampah",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 15),
              Divider(color: Colors.white70),
              SizedBox(height: 20),
              Text(
                "Main Menu",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                textAlign: TextAlign.center,
              ),
              ListTile(
                leading: Icon(Icons.home),
                iconColor: Colors.blue,
                title: Text("Dashboard"),
                textColor: Colors.blue,
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return dashboard();
                      },
                    ),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.monitor),
                iconColor: Colors.blue,
                title: Text("TPA"),
                textColor: Colors.blue,
                onTap: () => null,
              ),
              ListTile(
                leading: Image.asset(
                  'assets/database.png',
                  height: 23,
                  width: 23,
                  color: Colors.blue,
                ),
                title: Text("Data Master"),
                textColor: Colors.blue,
                onTap: () => null,
              ),
              ListTile(
                leading: Image.asset(
                  'assets/activity.png',
                  height: 23,
                  width: 23,
                  color: Colors.blue,
                ),
                iconColor: Colors.blue,
                title: Text("Data Operasional"),
                textColor: Colors.blue,
                onTap: () => null,
              ),
              ListTile(
                leading: Icon(Icons.person),
                iconColor: Colors.blue,
                title: Text("Akun UPTD"),
                textColor: Colors.blue,
                onTap: () => null,
              ),
              ListTile(
                leading: Icon(Icons.file_copy_outlined),
                iconColor: Colors.blue,
                title: Text("Laporan"),
                textColor: Colors.blue,
                onTap: () => null,
              ),
              ListTile(
                leading: Image.asset(
                  'assets/send.png',
                  height: 23,
                  width: 23,
                  color: Colors.blue,
                ),
                title: Text("Berita"),
                textColor: Colors.blue,
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Berita();
                      },
                    ),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                iconColor: Colors.blue,
                title: Text("Pengaturan"),
                textColor: Colors.blue,
                onTap: () => null,
              ),
            ],
          ),
        ),
        body: Center(
          child: Text(
            "Register",
            style: TextStyle(
                fontWeight: FontWeight.w600, fontSize: 18, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
