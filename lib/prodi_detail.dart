import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'prodi.dart';
import 'visi_detail.dart';
import 'dosen_detail.dart';
import 'ketuaprodi.dart';
import 'prodi_profil.dart';
import 'prodi_akreditasi.dart';
import 'prodi_prestasi.dart';

class ProdiDetailPage extends StatefulWidget {
  final Prodi prodi;

  const ProdiDetailPage({Key? key, required this.prodi}) : super(key: key);

  @override
  _ProdiDetailPageState createState() => _ProdiDetailPageState();
}

class _ProdiDetailPageState extends State<ProdiDetailPage> {
  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Color _getProgramColor(String programStudi) {
    switch (programStudi.toLowerCase()) {
      case 'informatika':
        return Colors.blue[900] ?? Colors.blue;
      case 'sistem informasi':
        return Colors.blue[700] ?? Colors.blue;
      case 'sains data':
        return Colors.green[500] ?? Colors.green;
      case 'bisnis digital':
        return Colors.yellow[500] ?? Colors.yellow;
      case 'magister teknologi informasi':
        return Colors.purple[700] ?? Colors.purple;
      default:
        return Colors.grey[200] ?? Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = _getProgramColor(widget.prodi.label);

    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Prodi ${widget.prodi.label}'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: backgroundColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Image.asset(
                  widget.prodi.imageUrl,
                  width: 150,
                  height: 150,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '${widget.prodi.label}',
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 10),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 7,
              itemBuilder: (BuildContext context, int index) {
                List<String> titles = [
                  'Profil',
                  'Visi & Misi',
                  'Akreditasi',
                  'Ketua Prodi',
                  'Dosen',
                  'Laman Web Prodi',
                  'Prestasi Mahasiswa',
                ];

                List<String> logoPaths = [
                  'assets/logo_profil.png',
                  'assets/logo_visimisi.png',
                  'assets/logo_akreditasi.png',
                  'assets/logo_kaprodi.png',
                  'assets/logo_dosen.png',
                  'assets/logo_web.png',
                  'assets/logo_prestasi.png',
                ];

                return GestureDetector(
                  onTap: () {
                    switch (index) {
                      case 0:
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProdiProfilPage(
                                programStudi: widget.prodi.label),
                          ),
                        );
                        break;

                      case 1:
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VisiMisiProdiDetailPage(
                              prodiType: widget.prodi.label,
                            ),
                          ),
                        );
                        break;
                      case 2:
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProdiAkreditasiPage(
                              prodiType: widget.prodi.label,
                            ),
                          ),
                        );
                        break;
                      case 3:
                        String programStudi = widget.prodi.label;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => KetuaDetailPage(
                              ketuaDetails: [
                                ketuaInformatika,
                                ketuaSistemInformasi,
                                ketuaSainsData,
                                ketuaBisnisDigital,
                                ketuaMagisterTeknologiInformasi,
                              ],
                              programStudi: programStudi,
                            ),
                          ),
                        );
                        break;

                      case 4:
                        String programStudi = widget.prodi.label;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DosenDetailPage(
                              dosenDetails: [
                                dosenSistemInformasi1,
                                dosenSistemInformasi2,
                                dosenSistemInformasi3,
                                dosenSistemInformasi4,
                                dosenInformatika1,
                                dosenInformatika2,
                                dosenSainsData1,
                                dosenSainsData2,
                                dosenBisnisDigital1,
                                dosenBisnisDigital2,
                                dosenMagisterTeknologiInformasi1,
                                dosenMagisterTeknologiInformasi2,
                              ],
                              programStudi: programStudi,
                            ),
                          ),
                        );
                        break;

                      case 5:
                        if (widget.prodi.websiteUrl.isNotEmpty) {
                          _launchURL(widget.prodi.websiteUrl);
                        }
                        break;

                      case 6:
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProdiPrestasiPage(
                              prodi: widget.prodi.label,
                            ),
                          ),
                        );
                        break;
                    }
                  },
                  child: Card(
                    child: ListTile(
                      leading: Image.asset(
                        logoPaths[index],
                        width: 30,
                        height: 30,
                      ),
                      title: Text(titles[index]),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
