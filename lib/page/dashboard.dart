import 'package:flutter/material.dart';
import 'package:kelola_sampah/page/berita_page.dart';
import 'package:kelola_sampah/page/home_page.dart';

class dashboard extends StatefulWidget {
  const dashboard({super.key});

  @override
  State<dashboard> createState() => _dashboard();
}

class _dashboard extends State<dashboard> {
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
                        return HomePage();
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
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: GridView.count(
            crossAxisCount: 2,
            children: <Widget>[
              Card(
                margin: EdgeInsets.all(10.0),
                child: InkWell(
                  onTap: () {},
                  splashColor: Colors.blue,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          Icons.home,
                          size: 50.0,
                          color: Color.fromARGB(255, 92, 81, 247),
                        ),
                        Text("1", style: new TextStyle(fontSize: 17.5)),
                        Text("Bank Sampah",
                            style: new TextStyle(fontSize: 13.0))
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.all(10.0),
                child: InkWell(
                  onTap: () {},
                  splashColor: Colors.blue,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Image.asset(
                          'assets/kotak.png',
                          height: 50,
                          width: 50,
                          color: Color.fromARGB(240, 21, 137, 225),
                        ),
                        Text("1", style: new TextStyle(fontSize: 17.5)),
                        Text("Kecamatan", style: new TextStyle(fontSize: 13.0))
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.all(10.0),
                child: InkWell(
                  onTap: () {},
                  splashColor: Colors.blue,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Image.asset(
                          'assets/vector.png',
                          height: 50,
                          width: 50,
                          color: Color.fromARGB(255, 202, 161, 11),
                        ),
                        Text("4", style: new TextStyle(fontSize: 17.5)),
                        Text("UPTD", style: new TextStyle(fontSize: 13.0))
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.all(10.0),
                child: InkWell(
                  onTap: () {},
                  splashColor: Colors.blue,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Image.asset(
                          'assets/activity.png',
                          height: 50,
                          width: 50,
                          color: Color.fromARGB(255, 30, 214, 36),
                        ),
                        Text("Aman", style: new TextStyle(fontSize: 20.5)),
                        Text("Status TPA", style: new TextStyle(fontSize: 13.0))
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
  