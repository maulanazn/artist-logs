import 'package:flutter/material.dart';
import 'main_screen.dart';

class Login extends StatefulWidget {
  const Login({Key? key}): super(key: key);

  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "daftar",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),
        ),
        backgroundColor: Colors.black45,
        leading: Row(
          children: [
            IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 40.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "ketik nama",
                labelText: "nama lengkap",
                icon: Icon(Icons.people)
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 17.0)),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "input password anda",
                labelText: "rahasia, dan minimal 8 karakter",
                icon: Icon(Icons.security)
              ),
              maxLength: 100,
            ),
            Padding(padding: EdgeInsets.only(top: 17.0)),
            OutlinedButton(
              child: Text("submit"),
              onPressed: () {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return MyHomePage();
                  }));
                });
              },
            )
          ],
        ),
      ),
    );
  }
}