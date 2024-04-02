import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({Key? key}) : super(key: key);

  void _sendWhatsappMessage() async {
    final Uri _whatsappLaunchUri = Uri(
      scheme: 'https',
      path: 'wa.me/6285746072075',
    );

    if (await canLaunch(_whatsappLaunchUri.toString())) {
      await launch(_whatsappLaunchUri.toString());
    } else {
      throw 'Could not launch $_whatsappLaunchUri';
    }
  }

  void _sendEmail() async {
    final Uri _emailLaunchUri = Uri(
      scheme: 'mailto',
      path: '22082010074@student.upnjatim.ac.id',
    );

    if (await canLaunch(_emailLaunchUri.toString())) {
      await launch(_emailLaunchUri.toString());
    } else {
      throw 'Could not launch $_emailLaunchUri';
    }
  }

  void _openGithubProfile() async {
    const String githubUrl = 'https://github.com/Arizaldi123';
    if (await canLaunch(githubUrl)) {
      await launch(githubUrl);
    } else {
      throw 'Could not launch $githubUrl';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Profil'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('assets/profil_arizaldi.jpeg'),
              ),
              SizedBox(height: 10),
              Container(
                color: Colors.orange,
                padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width * 0.7,
                child: Row(
                  children: [
                    Icon(Icons.person, color: Colors.white),
                    SizedBox(width: 10),
                    Text(
                      'Nama Lengkap',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Muhammad Arizaldi Eka Prasetya',
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(height: 10),
              Container(
                color: Colors.orange,
                padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width * 0.7,
                child: Row(
                  children: [
                    Icon(Icons.date_range, color: Colors.white),
                    SizedBox(width: 10),
                    Text(
                      'Tempat, Tanggal Lahir',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Jombang, 04 Desember 2003',
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(height: 10),
              Container(
                color: Colors.orange,
                padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width * 0.7,
                child: Row(
                  children: [
                    Icon(Icons.location_on, color: Colors.white),
                    SizedBox(width: 10),
                    Text(
                      'Alamat',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Rejoso Ngumpul Jogoroto Jombang',
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(height: 10),
              Container(
                color: Colors.orange,
                padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width * 0.7,
                child: Row(
                  children: [
                    Icon(Icons.phone, color: Colors.white),
                    SizedBox(width: 10),
                    Text(
                      'No. HP',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: _sendWhatsappMessage,
                child: Text(
                  '085746072075',
                  style: TextStyle(fontSize: 15, color: Colors.blue),
                ),
              ),
              SizedBox(height: 10),
              Container(
                color: Colors.orange,
                padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width * 0.7,
                child: Row(
                  children: [
                    Icon(Icons.email, color: Colors.white),
                    SizedBox(width: 10),
                    Text(
                      'Email',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: _sendEmail,
                child: Text(
                  '22082010074@student.upnjatim.ac.id',
                  style: TextStyle(fontSize: 15, color: Colors.blue),
                ),
              ),
              SizedBox(height: 10),
              Container(
                color: Colors.orange,
                padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width * 0.7,
                child: Row(
                  children: [
                    Icon(Icons.link, color: Colors.white),
                    SizedBox(width: 10),
                    Text(
                      'URL Profil Github',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: _openGithubProfile,
                child: Text(
                  'https://github.com/Arizaldi123',
                  style: TextStyle(fontSize: 15, color: Colors.blue),
                ),
              ),
              SizedBox(height: 10),
              Container(
                color: Colors.orange,
                padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width * 0.7,
                child: Row(
                  children: [
                    Icon(Icons.school, color: Colors.white),
                    SizedBox(width: 10),
                    Text(
                      'Riwayat Pendidikan',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Text(
                'MIN 4 Jombang\nMTsN 2 Jombang\nSMK Telekomunikasi Darul Ulum Jombang',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(height: 10),
              Container(
                color: Colors.orange,
                width: MediaQuery.of(context).size.width * 0.7,
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Icon(Icons.star, color: Colors.white),
                    SizedBox(width: 10),
                    Text(
                      'Penghargaan',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Text(
                '-------------',
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
