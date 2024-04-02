import 'package:flutter/material.dart';

class ProdiAkreditasiPage extends StatelessWidget {
  final String prodiType;

  ProdiAkreditasiPage({required this.prodiType});

  @override
  Widget build(BuildContext context) {
    String imagePath = '';
    if (prodiType == 'Informatika') {
      imagePath = 'assets/informatika.jpg';
    } else if (prodiType == 'Sistem Informasi') {
      imagePath = 'assets/sifo.jpg';
    } else if (prodiType == 'Sains Data') {
      imagePath = 'assets/sada.png';
    } else if (prodiType == 'Bisnis Digital') {
      imagePath = 'assets/bisdi.png';
    } else if (prodiType == 'Magister Teknologi Informasi') {
      imagePath = 'assets/teknologi_informasi.png';
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Akreditasi $prodiType'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: prodiType == 'Informatika'
                      ? Colors.blue[900]
                      : prodiType == 'Sistem Informasi'
                          ? Colors.blue
                          : prodiType == 'Sains Data'
                              ? Colors.green
                              : prodiType == 'Bisnis Digital'
                                  ? Colors.yellow
                                  : Colors.purple,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    imagePath,
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Text(
                    'Informasi Akreditasi Program Studi $prodiType',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  SizedBox(width: 5),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 15,
                    child: Icon(
                      Icons.error,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Card(
              color: Colors.grey[300],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              margin: EdgeInsets.all(10),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        text:
                            'Berdasarkan Surat Keputusan LAMINFOKOM, Akreditasi Program Studi $prodiType di Universitas Pembangunan Nasional Veteran Jawa Timur, Kota Surabaya memenuhi peringkat ',
                        style: TextStyle(
                            fontWeight: FontWeight.normal, color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Akreditasi Baik',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    RichText(
                      text: TextSpan(
                        text: 'SK Akreditasi dapat Diunduh pada link ',
                        style: TextStyle(color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'berikut ini',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
