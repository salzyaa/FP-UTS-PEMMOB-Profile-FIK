import 'package:flutter/material.dart';

class VisiMisiProdiDetailPage extends StatelessWidget {
  final String prodiType;

  const VisiMisiProdiDetailPage({Key? key, required this.prodiType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    Color imageBackgroundColor = Colors.grey;
    switch (prodiType) {
      case 'Informatika':
        imageBackgroundColor = const Color.fromRGBO(13, 71, 161, 1);
        break;
      case 'Sistem Informasi':
        imageBackgroundColor = Colors.blue;
        break;
      case 'Sains Data':
        imageBackgroundColor = Colors.green;
        break;
      case 'Bisnis Digital':
        imageBackgroundColor = Colors.yellow;
        break;
      case 'Magister Teknologi Informasi':
        imageBackgroundColor = Colors.purple;
        break;
      default:
        break;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Visi Misi Prodi'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  if (prodiType == 'Informatika')
                    Container(
                      width: screenWidth,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: imageBackgroundColor,
                      ),
                      child: Image.asset(
                        'assets/informatika.jpg',
                        width: 70,
                        height: 70,
                      ),
                    ),
                  if (prodiType == 'Informatika') SizedBox(height: 10),
                  if (prodiType == 'Informatika')
                    Text(
                      'Visi dan Misi Prodi Informatika',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  if (prodiType == 'Sistem Informasi')
                    Container(
                      width: screenWidth,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: imageBackgroundColor,
                      ),
                      child: Image.asset(
                        'assets/sifo.jpg',
                        width: 70,
                        height: 70,
                      ),
                    ),
                  if (prodiType == 'Sistem Informasi') SizedBox(height: 10),
                  if (prodiType == 'Sistem Informasi')
                    Text(
                      'Visi dan Misi Prodi Sistem Informasi',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  if (prodiType == 'Sains Data')
                    Container(
                      width: screenWidth,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: imageBackgroundColor,
                      ),
                      child: Image.asset(
                        'assets/sada.png',
                        width: 70,
                        height: 70,
                      ),
                    ),
                  if (prodiType == 'Sains Data') SizedBox(height: 10),
                  if (prodiType == 'Sains Data')
                    Text(
                      'Visi dan Misi Prodi Sains Data',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  if (prodiType == 'Bisnis Digital')
                    Container(
                      width: screenWidth,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: imageBackgroundColor,
                      ),
                      child: Image.asset(
                        'assets/bisdi.png',
                        width: 70,
                        height: 70,
                      ),
                    ),
                  if (prodiType == 'Bisnis Digital') SizedBox(height: 10),
                  if (prodiType == 'Bisnis Digital')
                    Text(
                      'Visi dan Misi Prodi Bisnis Digital',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  if (prodiType == 'Magister Teknologi Informasi')
                    Container(
                      width: screenWidth,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: imageBackgroundColor,
                      ),
                      child: Image.asset(
                        'assets/teknologi_informasi.png',
                        width: 70,
                        height: 70,
                      ),
                    ),
                  if (prodiType == 'Magister Teknologi Informasi')
                    SizedBox(height: 10),
                  if (prodiType == 'Magister Teknologi Informasi')
                    Text(
                      'Visi dan Misi Prodi Magister Teknologi Informasi',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      prodiType == 'Informatika'
                          ? 'Visi Prodi Informatika :'
                          : prodiType == 'Sistem Informasi'
                              ? 'Visi Prodi Sistem Informasi :'
                              : prodiType == 'Sains Data'
                                  ? 'Visi Prodi Sains Data :'
                                  : prodiType == 'Bisnis Digital'
                                      ? 'Visi Prodi Bisnis Digital :'
                                      : prodiType ==
                                              'Magister Teknologi Informasi'
                                          ? 'Visi Prodi Magister Teknologi Informasi ='
                                          : '',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      prodiType == 'Informatika'
                          ? 'Berdasarkan Visi Universitas dan Fakultas, maka Program Studi Informatika UPNVJT merumuskan visinya yakni “MENGEMBANGKAN KEILMUAN INFORMATIKA YANG UNGGUL DALAM BIDANG SISTEM CERDAS TEPAT GUNA BERKARAKTER BELA NEGARA”. Visi ini diharapkan akan dapat dicapai pada tahun 2039.'
                          : prodiType == 'Sistem Informasi'
                              ? 'Visi Prodi Sistem Informasi adalah menjadi program studi yang unggul berkarakter bela negara. Visi tersebut diwujudkan ke dalam roadmap keilmuan program studi untuk membangun Smart Village (Desa Cerdas) dengan dukungan teknologi/sistem informasi.'
                              : prodiType == 'Sains Data'
                                  ? 'Menjadi program studi sains data yang unggul di bidang Kecerdasan Buatan dan Big Data untuk industri 4.0 berkarakter Bela Negara'
                                  : prodiType == 'Bisnis Digital'
                                      ? 'Menjadi Program Studi yang Unggul di Bidang Intelligent Business untuk Industri 4.0 dan Society 5.0 Berkarakter Bela Negara'
                                      : prodiType ==
                                              'Magister Teknologi Informasi'
                                          ? 'Dengan mengacu kepada Visi Universitas dan Visi Fakultas, dan sesuai kebutuhan era industri 4.0 dan Society 5.0 serta pentingnya menyiapkan penguasaan terhadap kecerdasan buatan, maka ditetapkan Visi PSMTI yaitu: Menjadi Program Studi yang Unggul di Bidang Teknologi Informasi berbasis Sistem Cerdas yang Berkarakter Bela Negara'
                                          : '',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      prodiType == 'Informatika'
                          ? 'Misi Prodi Informatika :'
                          : prodiType == 'Sistem Informasi'
                              ? 'Misi Prodi Sistem Informasi :'
                              : prodiType == 'Sains Data'
                                  ? 'Misi Prodi Sains Data :'
                                  : prodiType == 'Bisnis Digital'
                                      ? 'Misi Prodi Bisnis Digital :'
                                      : prodiType ==
                                              'Magister Teknologi Informasi'
                                          ? 'Misi Prodi Magister Teknologi Informasi :'
                                          : '',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      prodiType == 'Informatika'
                          ? 'Pada rentang tahun 2020 sampai 2024, arah kebijakan UPNVJT adalah pada penguatan kapabilitas kelembagaan yang berorientasi pendidikan dan riset yang berkarakter bela negara untuk meningkatkan daya saing di tingkat ASEAN, dengan didukung oleh SDM yang memiliki kepakaran dan keunggulan riset. Maka dari itu, Renstra Universitas dan Fakultas Ilmu Komputer sebagai acuan utama dalam merencanakan dan menyelenggarakan program-program kegiatan di Program Studi Informatika. Visi Keilmuan Program Studi Informatika memiliki muatan sesuai dengan Kerangka Kualifikasi Nasional Indonesia (KKNI) tingkat Sarjana (Level 6) sesuai dengan jenjang pendidikan program studi.'
                          : prodiType == 'Sistem Informasi'
                              ? '1. Menghasilkan lulusan yang memiliki pengetahuan, dan kompetensi di bidang manajemen, perencanaan, analisis, desain, pengembangan, evaluasi, audit, dan tata kelola produk sistem informasi untuk mendukung tujuan organisasi/bisnis.\n'
                                  '2. Menghasilkan lulusan yang beretika, mampu berliterasi, berkomunikasi dan berkolaborasi dengan baik, serta mempunyai jiwa kreatif, inovatif, dan adaptif terhadap dinamika organisasi/bisnis yang terus berubah sesuai dengan tren perkembangan jaman.\n'
                                  '3. Menghasilkan lulusan yang cinta tanah air, cerdas berbangsa dan bernegara, yakin Pancasila sebagai dasar negara, rela berkorban untuk bangsa dan negara, serta memiliki kemampuan awal bela negara.'
                              : prodiType == 'Sains Data'
                                  ? '1. Menyelenggarakan pendidikan terbaik di bidang kecerdasan buatan dan Big Data bagi para mahasiswa agar mampu menjadi lulusan yang handal, berkarakter Belanegara, dan berwawasan global dan siap menghadapi tantangan di tengah revolusi industri 4.0.\n'
                                      '2. Menyelenggarakan penelitian dan pengembangan ilmu pengetahuan di bidang kecerdasan buatan dan Big Data yang memberikan dampak pada kemajuan disiplin akademik dan profesional.\n'
                                      '3. Menyelenggarakan pengabdian kepada masyarakat dengan menerapkan ilmu-ilmu di bidang kecerdasan buatan dan Big Data.\n'
                                      '4. Melaksanakan tata kelola yang baik dan bersih dalam rangka mencapai pengelolaan anggaran yang akuntabel.\n'
                                      '5. Mengembangkan kualitas Sumber Daya Manusia yang memiliki karakter unggul, handal, cerdas, dan berjiwa kepemimpinan.\n'
                                      '6. Mengembangkan sistem pengelolaan sarana dan prasarana terintegrasi yang mendukung operasional.\n'
                                      '7. Menjalin kerjasama dengan masyarakat, institusi, dan lembaga pemerintah maupun swasta untuk terus meningkatkan kualitas kegiatan dan hasil tridarma perguruan tinggi.'
                                  : prodiType == 'Bisnis Digital'
                                      ? '1. Menyelenggarakan pendidikan terbaik di bidang Teknologi Bisnis Digital bagi para mahasiswa agar mereka mampu menjadi Sumber Daya Manusia handal, berdaya saing, unggul, dan berwawasan global dan siap menghadapi tantangan di tengah revolusi industri 4.0 dan society 5.0.\n'
                                          '2. Menyelenggarakan penelitian dan pengembangan ilmu pengetahuan di bidang Teknologi Bisnis Digital yang memberikan dampak pada kemajuan disiplin akademik dan profesional.\n'
                                          '3. Menyelenggarakan pengabdian kepada masyarakat dengan menerapkan ilmu-ilmu di bidang Teknologi Bisnis Digital.\n'
                                          '4. Menjalin kerjasama dengan masyarakat, institusi, dan lembaga pemerintah maupun swasta untuk terus meningkatkan kualitas kegiatan dan hasil tridarma perguruan tinggi.'
                                      : prodiType ==
                                              'Magister Teknologi Informasi'
                                          ? '1. Menyelenggarakan pendidikan Magister Teknologi Informasi yang berkualitas dan berkarakter bela negara untuk menghasilkan lulusan yang bermutu dan berdaya saing di tingkat lokal, nasional, dan internasional.\n'
                                              '2. Menyelenggarakan penelitian yang berkualitas untuk menghasilkan publikasi tingkat nasional, internasional, serta hak kekayaan atas intelektual, buku ajar, kebijakan dan teknologi yang berhasil guna dan berdaya guna dalam bidang Teknologi Informasi.\n'
                                              '3. Menyelenggarakan pengabdian kepada masyarakat sebagai pengembangan dan penerapan teknologi informasi dengan mengedepankan sumber daya lokal melalui layanan implementasi, konsultasi, pendampingan, dan pelatihan.\n'
                                              '4. Menjalin kerjasama dengan berbagai lembaga, baik di dalam maupun diluar negeri.'
                                          : '',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
