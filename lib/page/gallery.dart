import 'package:flutter/material.dart';
import 'package:artis_logs/model/daftar_gambar.dart';

class Gallery extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "galeri",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.black
          )
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        )
      ),
      backgroundColor: Colors.black,
      body: ListView.separated(
        itemBuilder: (context, images) {
           final KaryaSeniman karya = ListKaryaSeniman[images];
           return Column(
             children: [
               Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(top: 10.0)
                  ),
                  Image.asset(karya.imageAsset, height: 400, width: 800),
                  Container(
                    margin: EdgeInsets.only(bottom: 50.0)
                  ),
                  Text(
                    "${karya.imageName} by ${karya.name}",
                    style: TextStyle(
                      fontSize: 17.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    )
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10.0)
                  )
                ],
              ),
             ],
           );
        },
        itemCount: ListKaryaSeniman.length,
        separatorBuilder: (context, images) => const Divider(),
      ),
    );
  }
}