import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProdiProfilPage extends StatelessWidget {
  final String programStudi;

  ProdiProfilPage({required this.programStudi});
  Future<void> _sendEmail() async {
    String email = '';

    switch (programStudi) {
      case 'Informatika':
        email = 'mailto:informatika@upnjatim.ac.id';
        break;
      case 'Sistem Informasi':
        email = 'mailto:sistem_informasi@upnjatim.ac.id';
        break;
      case 'Sains Data':
        email = 'mailto:sains_data@upnjatim.ac.id';
        break;
      case 'Bisnis Digital':
        email = 'mailto:bisnis_digital@upnjatim.ac.id';
        break;
      case 'Magister Teknologi Informasi':
        email = 'mailto:mti@upnjatim.ac.id';
        break;
      default:
        email = '';
    }

    if (email.isNotEmpty && await canLaunch(email)) {
      await launch(email);
    } else {
      throw 'Could not launch $email';
    }
  }

  Color _getProgramColor(String programStudi) {
    switch (programStudi) {
      case 'Informatika':
        return Colors.blue[900]!;
      case 'Sistem Informasi':
        return Colors.blue;
      case 'Sains Data':
        return Colors.green;
      case 'Bisnis Digital':
        return Colors.yellow;
      case 'Magister Teknologi Informasi':
        return Colors.purple;
      default:
        return Colors.blue;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Prodi $programStudi'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: _getProgramColor(programStudi),
              height: 50,
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: _sendEmail,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.email,
                      color: Colors.white,
                    ),
                    SizedBox(width: 5),
                    Text(
                      '$programStudi@upnjatim.ac.id',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Stack(
              children: [
                Image.asset(
                  'assets/bgfik.jpg',
                  fit: BoxFit.cover,
                ),
                Positioned.fill(
                  child: Container(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'Selamat datang di Program Studi ',
                            style: TextStyle(color: Colors.white, fontSize: 25),
                            children: <TextSpan>[
                              TextSpan(
                                text: '$programStudi !',
                                style: TextStyle(
                                  color: _getProgramColor(programStudi),
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // konten lainnya
                  SizedBox(height: 20),
                  Icon(
                    Icons.people,
                    color: _getProgramColor(programStudi),
                    size: 50,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'DOSEN KOMPETEN',
                    style: TextStyle(
                      color: _getProgramColor(programStudi),
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Dosen sebagai pendidik yang akan mengajarkan ilmu kepada mahasiswa. Program studi informatika mempunyai dosen yang kompeten dalam bidang Informatika merupakan alumni kampus luar dan dalam negeri.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  Icon(
                    Icons.computer,
                    color: _getProgramColor(programStudi),
                    size: 50,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'LABORATORIUM KOMPUTER',
                    style: TextStyle(
                      color: _getProgramColor(programStudi),
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Laboratorium komputer merupakan komponen penting untuk mengasah dan melatih skills mahasiswa. Laboratorium juga sebagai tempat untuk melaksanakan riset/ penelitian guna mengembangkan ilmu pengetahuan.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  Icon(
                    Icons.book,
                    color: _getProgramColor(programStudi),
                    size: 50,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'KURIKULUM TERPADU',
                    style: TextStyle(
                      color: _getProgramColor(programStudi),
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Kurikulum merupakan bagian penting dalam proses belajar mengajar. Ilmu yang akan didapatkan oleh mahasiswa sudah disiapkan oleh pendidik agar sesuai dengan capaian pembelajaran.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  Container(
                    color: _getProgramColor(programStudi),
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          '$programStudi TV',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 2),
                        GestureDetector(
                          onTap: () {
                            launch(
                                'https://www.youtube.com/watch?v=Pb9zybTwUMk&pp=ygUdcHJvZmlsIHVwbiB2ZXRlcmFuIGphd2EgdGltdXI%3D');
                          },
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Image.asset(
                                'assets/thumbnail_youtube.jpg',
                                width: 200,
                                height: 150,
                                fit: BoxFit.cover,
                              ),
                              CircleAvatar(
                                radius: 20,
                                backgroundColor: _getProgramColor(programStudi)
                                    .withOpacity(0.7),
                                child: Icon(
                                  Icons.play_arrow,
                                  size: 30,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ProdiProfilPage(programStudi: 'Informatika'),
  ));
}
