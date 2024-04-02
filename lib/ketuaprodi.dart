import 'package:flutter/material.dart';

class KetuaDetail {
  final String imageUrl;
  final String namaKetua;
  final String pendidikan;
  final String bidangMinatPublikasi;

  KetuaDetail({
    required this.imageUrl,
    required this.namaKetua,
    required this.pendidikan,
    required this.bidangMinatPublikasi,
  });
}

KetuaDetail ketuaInformatika = KetuaDetail(
  imageUrl: 'assets/dsn_if_1.png',
  namaKetua: 'Fetty Tri Anggraeny, S.Kom. M.Kom',
  pendidikan:
      'S1 Teknik Informatika Institut Teknologi Sepuluh Nopember (ITS) Surabaya\nS2 Teknik Informatika Institut Teknologi Sepuluh Nopember (ITS) Surabaya',
  bidangMinatPublikasi:
      'Digital Image Processing\nComputer Vision\nGoogle Scholar\nSinta Jurnal\nScopus Jurnal',
);

KetuaDetail ketuaSistemInformasi = KetuaDetail(
  imageUrl: 'assets/dsn_si_1.jpeg',
  namaKetua: 'Agung Brastama Putra, S.Kom, M.Kom',
  pendidikan:
      'S1 Sistem Informasi Institut Bisnis dan Informatika Stikom Surabaya (STIKOM) Surabaya\nS2 Sistem Informasi Institut Teknologi Sepuluh Nopember (ITS) Surabaya',
  bidangMinatPublikasi:
      'Modeling and Simulation System Dynamics\nSoftware Development\nSystem Engineering.\nGoogle Scholar\nSinta Jurnal',
);

KetuaDetail ketuaSainsData = KetuaDetail(
  imageUrl: 'assets/dsn_sd_1.png',
  namaKetua: 'Dr.Eng.Ir.Dwi Arman Prasetya.,ST.,MT.,IPU.',
  pendidikan:
      'S1 Teknik Elektro Institut Teknologi Sepuluh Nopember (ITS) Surabaya\nS2 Teknik Elektro Universitas Brawijaya Malang\nS3 System Innovation Engineering, University of Tokushima Japan',
  bidangMinatPublikasi:
      'Robotics\nSwarm Robots\nArtificial Intelligence\nVirtual Reality\nInternet of Things\nGoogle Scholar\nSinta Jurnal.\nScopus Jurnal',
);

KetuaDetail ketuaBisnisDigital = KetuaDetail(
  imageUrl: 'assets/dsn_bd_1.jpg',
  namaKetua: 'Sugiarto, S.Kom, M.Kom',
  pendidikan:
      'S1 Teknik Informatika Institut Teknologi Sepuluh Nopember (ITS) Surabaya\nS2 Sistem Informasi Institut Teknologi Sepuluh Nopember (ITS) Surabaya',
  bidangMinatPublikasi: 'Google Scholar\nSinta Jurnal',
);

KetuaDetail ketuaMagisterTeknologiInformasi = KetuaDetail(
  imageUrl: 'assets/dsn_ti_1.jpg',
  namaKetua: 'Dr. Eng. Agussalim, MT.',
  pendidikan:
      'S1 Universitas Negeri Makassar\nS2 Teknik Informatika Universitas Hasanudin (UNHAS) Makassar\nS3 Computer Science, Kyushu Institute of Technology Japan',
  bidangMinatPublikasi:
      'Computer Networks\nStore-Carry-Forward Networking\nMultihop Wireless Networking\nDelay Tolerant Networking\nSoftware Defined Networking\nFog Computing\nGoogle Scholar\nSinta Jurnal',
);

class KetuaDetailPage extends StatelessWidget {
  final List<KetuaDetail> ketuaDetails;
  final String programStudi;

  const KetuaDetailPage(
      {Key? key, required this.ketuaDetails, required this.programStudi})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    KetuaDetail? filteredKetuaDetail = ketuaDetails.firstWhere(
      (ketua) {
        if (programStudi == 'Sistem Informasi') {
          return ketua.imageUrl.contains('dsn_si');
        } else if (programStudi == 'Informatika') {
          return ketua.imageUrl.contains('dsn_if');
        } else if (programStudi == 'Sains Data') {
          return ketua.imageUrl.contains('dsn_sd');
        } else if (programStudi == 'Bisnis Digital') {
          return ketua.imageUrl.contains('dsn_bd');
        } else if (programStudi == 'Magister Teknologi Informasi') {
          return ketua.imageUrl.contains('dsn_ti');
        }
        return false;
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Ketua Prodi'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset(
              filteredKetuaDetail.imageUrl,
              width: 100,
              height: 100,
            ),
            SizedBox(height: 10),
            Text(
              filteredKetuaDetail.namaKetua,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 5),
            Container(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 150,
                    color: Colors.blue,
                    child: Center(
                      child: Text(
                        'Pendidikan',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  for (String pendidikan
                      in filteredKetuaDetail.pendidikan.split('\n'))
                    Text(
                      pendidikan,
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Container(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 200,
                    height: 20,
                    color: Colors.blue,
                    child: Center(
                      child: Text(
                        'Bidang Minat & Publikasi',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  for (String bidangMinatPublikasi
                      in filteredKetuaDetail.bidangMinatPublikasi.split('\n'))
                    Text(
                      bidangMinatPublikasi,
                      style: TextStyle(
                        fontSize: 14,
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
