import 'package:flutter/material.dart';

class ProdiPrestasiPage extends StatelessWidget {
  final String prodi;

  ProdiPrestasiPage({required this.prodi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prestasi Mahasiswa'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: _buildPrestasiContent(prodi),
        ),
      ),
    );
  }

  List<Widget> _buildPrestasiContent(String prodi) {
    Color containerColor;
    switch (prodi) {
      case 'Sistem Informasi':
        containerColor = Colors.blue[700]!;
        break;
      case 'Informatika':
        containerColor = Colors.blue[900]!;
        break;
      case 'Sains Data':
        containerColor = Colors.green[500]!;
        break;
      case 'Bisnis Digital':
        containerColor = Colors.yellow[500]!;
        break;
      case 'Magister Teknologi Informasi':
        containerColor = Colors.purple[700]!;
        break;
      default:
        containerColor = Colors.indigo[900]!;
        break;
    }

    return [
      Container(
        color: containerColor,
        padding: EdgeInsets.all(10),
        child: Text(
          'Prestasi Mahasiswa - $prodi',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: _buildPrestasiItems(prodi),
        ),
      ),
    ];
  }

  List<Widget> _buildPrestasiItems(String prodi) {
    switch (prodi) {
      case 'Sistem Informasi':
        return [
          Image.asset('assets/prestasi_1.jpeg'),
          SizedBox(height: 10),
          Text(
            'BNNP Jatim Luncurkan Aplikasi “SIMPEL” buatan Mahasiswa SI UPN',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Badan Narkotika Nasional Provinsi Jawa Timur (BNNP Jatim) meluncurkan “Simpel BNNP Jatim”. Aplikasi berbasis online yang bisa diakses lewat smart phone itu merupakan karya bersama BNNP Jatim dan mahasiswa Program Studi Sistem Informasi UPN Veteran Jawa...',
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 20),
          Image.asset('assets/prestasi_2.jpg'),
          SizedBox(height: 10),
          Text(
            'MAHASISWA SI UPN WAKILI INDONESIA KOMPETISI DEVELOPING INTERNASIONAL',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Muhammad Al Kaff, Mahasiswa Sistem Informasi Universitas Pembangunan Nasional Veteran Jawa Timur (UPNVJ) telah megharumkan nama Indonesia dalam kompetisi Developing tingkat Internasional “Global VR Hackation”. Alkaff merupakan satu-satunya...',
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 20),
          Image.asset('assets/prestasi_3.jpg'),
          SizedBox(height: 10),
          Text(
            'Ciptakan “Augmented Reality” untuk belajar sejarah',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Sebagai kampus bela negara, civitas akademika di lingkungan UPN “Veteran” Jawa Timur memiliki tanggung jawab dan peran yang lebih dalam hal kegiatan penelitian dan pengabdian kepada masyarakat. Salah satu langkah untuk mencapai hal tersebut adalah...',
            textAlign: TextAlign.justify,
          ),
        ];
      case 'Informatika':
      case 'Sains Data':
      case 'Bisnis Digital':
      case 'Magister Teknologi Informasi':
        return [
          Image.network(
            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
            width: 500,
            height: 400,
          ),
          SizedBox(height: 10),
          Text(
            'Headline Prestasi 1 Prodi $prodi',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat...',
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 20),
          Image.network(
            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
            width: 500,
            height: 400,
          ),
          SizedBox(height: 10),
          Text(
            'Headline Prestasi 2 Prodi $prodi',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat...',
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 20),
          Image.network(
            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
            width: 500,
            height: 400,
          ),
          SizedBox(height: 10),
          Text(
            'Headline Prestasi 3 Prodi $prodi',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat...',
            textAlign: TextAlign.justify,
          ),
        ];
      default:
        return [];
    }
  }
}
