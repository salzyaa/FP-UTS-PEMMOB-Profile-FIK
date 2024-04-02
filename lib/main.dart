import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'prodi.dart';
import 'prodi_detail.dart';
import 'fak_detail.dart';
import 'my_profile.dart';
import 'my_profile2.dart';

void main() {
  runApp(const ProfileFIK());
}

class ProfileFIK extends StatelessWidget {
  const ProfileFIK({Key? key}) : super(key: key);

  static const MaterialColor white = MaterialColor(
    0xFFFFFFFF,
    <int, Color>{
      50: Color(0xFFFFFFFF),
      100: Color(0xFFFFFFFF),
      200: Color(0xFFFFFFFF),
      300: Color(0xFFFFFFFF),
      400: Color(0xFFFFFFFF),
      500: Color(0xFFFFFFFF),
      600: Color(0xFFFFFFFF),
      700: Color(0xFFFFFFFF),
      800: Color(0xFFFFFFFF),
      900: Color(0xFFFFFFFF),
    },
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Fakultas Ilmu Komputer',
      theme: ThemeData(
        primarySwatch: white,
      ),
      home: const MyHomePage(title: '', logoImagePath: 'assets/fik_logo.png'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title, required this.logoImagePath})
      : super(key: key);
  final String title;
  final String logoImagePath;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _navigateToFakultasDetailPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => FakultasDetailPage()),
    );
  }

  void _navigateToVisiMisiPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => VisiMisiDetailPage()),
    );
  }

  void _sendEmail() async {
    final Uri _emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'fasilkom@upnjatim.ac.id',
    );

    if (await canLaunch(_emailLaunchUri.toString())) {
      await launch(_emailLaunchUri.toString());
    } else {
      throw 'Could not launch $_emailLaunchUri';
    }
  }

  void _navigateToDetailPage(BuildContext context, Prodi prodi) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ProdiDetailPage(prodi: prodi)),
    );
  }

  void _navigateToArizaldiProfilePage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MyProfilePage()),
    );
  }

  void _navigateToSalsaProfilePage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MyProfilePage2()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              widget.logoImagePath,
              width: 230,
              height: 230,
            ),
            SizedBox(width: 10),
            Text(widget.title),
          ],
        ),
        actions: [
          IconButton(
            onPressed: _navigateToFakultasDetailPage,
            icon: Row(
              children: [
                Icon(Icons.expand_more),
                SizedBox(width: 5),
                Text('Sejarah'),
              ],
            ),
          ),
          IconButton(
            onPressed: _navigateToVisiMisiPage,
            icon: Row(
              children: [
                Icon(Icons.expand_more),
                SizedBox(width: 5),
                Text('Visi & Misi'),
              ],
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: GestureDetector(
            onTap: _sendEmail,
            child: Container(
              color: Colors.orange,
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.email, color: Colors.white),
                  SizedBox(width: 5),
                  Text(
                    'fasilkom@upnjatim.ac.id',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/bgfik.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 500,
                          height: 50,
                          child: Text(
                            'Fakultas Ilmu Komputer (FIK) adalah Fakultas yang ketujuh yang dibentuk oleh UPN “Veteran” Jawa Timur yang diawali... dengan pelantikan Dekan pertama pada bulan Agustus 2016 berdasarkan Keputusan Rektor No. 153/UN63/KP/2016 tanggal 18 Agustus 2016',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),
                        ElevatedButton(
                          onPressed: _navigateToFakultasDetailPage,
                          child: Text('Read More'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8.0),
              Padding(
                padding: const EdgeInsets.fromLTRB(15.0, 8.0, 0, 8.0),
                child: Text(
                  'Daftar Program Studi',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Times New Roman',
                    color: Colors.black,
                  ),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: Prodi.samples.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      buildProdiCard(context, Prodi.samples[index]),
                      if (Prodi.samples[index].label ==
                          'Magister Teknologi Informasi')
                        buildMyProfileSection(),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildProdiCard(BuildContext context, Prodi prodi) {
    return GestureDetector(
      onTap: () {
        _navigateToDetailPage(context, prodi);
      },
      child: Card(
        elevation: 2.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: Color.fromARGB(255, 255, 166, 0).withOpacity(0.5),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child:
                          Image.asset(prodi.imageUrl, width: 100, height: 100),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          prodi.label,
                          style: const TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Palatino',
                          ),
                        ),
                      ),
                      const SizedBox(height: 14.0),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildMyProfileSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 16.0),
          child: Text(
            'My Profile',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(height: 8.0),
        buildProfileCard(
          'Muhammad Arizaldi Eka Prasetya',
          'assets/profil_arizaldi.jpeg',
          true,
        ),
        SizedBox(height: 8.0),
        buildProfileCard(
          'Salsabila Putri Azzahra',
          'assets/profil_salsa.jpeg',
          false,
        ),
      ],
    );
  }

  Widget buildProfileCard(String name, String imagePath, bool isArizaldi) {
    return GestureDetector(
      onTap: () {
        if (isArizaldi) {
          _navigateToArizaldiProfilePage();
        } else {
          _navigateToSalsaProfilePage();
        }
      },
      child: Card(
        elevation: 2.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: Color.fromARGB(255, 255, 166, 0).withOpacity(0.5),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(imagePath),
              ),
              SizedBox(width: 10),
              Text(
                name,
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
