import 'package:flutter/material.dart';
import 'gallery.dart';
import 'login.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("gallery overview"),
            backgroundColor: Colors.black,
            leading: IconButton(
              icon: Icon(
                Icons.search
              ),
              onPressed: () {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Gallery();
                  }));
                });
              }
            ),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 300.0)
            ),
            TextButton(
              child: Text(
                "Daftar",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Login();
                  }));
                });
              }
            ),
          ]
        ),
        body: Column(
          children: [
              Center(
              child: Text(
                "\nAplikasi untuk para seniman\nCek Galeri di ikon atas sebelah kiri",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontFamily: "sans serif"
                )
              ),
            ),
          ],
        ),
    );
  }
}