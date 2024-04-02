import 'package:flutter/material.dart';

class FakultasDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Fakultas Ilmu Komputer'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
        
            children: [
              Container
              (
    alignment: Alignment.topCenter,
                width: 800,
                height: 300,
                child: Stack(
                  children: [
                    Positioned(
                      child: Image.asset(
                        'assets/bgfik.jpg',
                        width: 360,
                        height: 300,
                        alignment: Alignment.center,
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: Text(
                          'Sejarah Fakultas Ilmu Komputer',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 20.0, 16.0, 16.0),
                child: Text(
                  'Fakultas Ilmu Komputer (FIK) adalah Fakultas yang ketujuh yang dibentuk oleh UPN “Veteran” Jawa Timur yang diawali dengan pelantikan Dekan pertama pada bulan Agustus 2016 berdasarkan Keputusan Rektor No. 153/UN63/KP/2016 tanggal 18 Agustus 2016. FIK mengelola 2 (dua) program studi S1, yakni Teknik Informatika dan Sistem Informasi. Kedua program studi ini sebelumnya berada di bawah Fakultas Teknologi Industri (FTI), dimana program studi Teknik Informatika didirikan pada tahun 2003 dan Sistem Informasi pada tahun 2007. Berdasarkan Peraturan Menteri Riset, Teknologi, dan Pendidikan Tinggi No.38 Tahun 2015 tentang Organisasi dan Tata Kerja Universitas Pembangunan Nasional “Veteran” Jawa Timur, telah dilakukan penataan kelembagaan di lingkungan UPN “Veteran” Jawa Timur sehingga program studi S1 Teknik Informatika dan S1 Sistem Informasi menjadi berada di bawah Fakultas Ilmu Komputer. Sedangkan induk asalnya, Fakultas Teknologi Industri, berganti nama menjadi Fakultas Teknik dengan mengadopsi 2 (dua) program studi Teknik Sipil dan Teknik Lingkungan yang sebelumnya berada di bawah Fakultas Teknik Sipil dan Perencanaan (FTSP). Kemudian dalam perkembangannya didirikan program studi Sains Data pada tahun 2020.\n\n'
                  'Fakultas Ilmu Komputer UPNVJT telah berperan aktif dalam mencerdaskan kehidupan bangsa, mengembangkan ilmu pengetahuan dan teknologi bidang teknologi informasi secara luas untuk membantu mengatasi berbagai persoalan bangsa dan mendukung peningkatan kesejahteraan masyarakat. Kegiatan Tri Dharma Perguruan Tinggi telah diimplementasikan dengan baik terbukti banyaknya skim hibah penelitian dan pengabdian masyarakat dari DRPM yang diterima dan dikerjakan oleh dosen-dosen FIK UPNVJT. Fakultas Ilmu Komputer telah banyak melakukan kerjasama dengan berbagai institusi dalam upaya mewujudkan visi dan misi yang diembannya.\n\n'
                  'Pada saat ini arus globalisasi telah melanda segala sektor di negeri ini dan menuntut kemampuan daya saing bangsa agar dapat berkiprah dalam percaturan internasional. Oleh karenanya mutu pendidikan harus terus ditingkatkan untuk menghasilkan sumber daya manusia yang berkualitas, yang mampu menguasai ilmu pengetahuan dan teknologi. Hal ini sejalan dengan Paradigma Baru Pendidikan Tinggi yang dicanangkan oleh Direktorat Jenderal Pendidikan Tinggi dengan memperhatikan elemen Otonomi, Evaluasi, Akreditasi dan Akuntabilitas di dalam mewujudkan Kualitas Sumberdaya Manusia yang tinggi. Pencapaian tersebut berdasarkan pada proses-proses dengan titik perhatian pada Relevansi, Akademik Atmosfer, Manajemen Internal terpadu, Sustainabilitas, Efisiensi dan Produktivitas, serta Kepemimpinan yang handal. Diharapkan pada masa mendatang, Fakultas Ilmu Komputer UPNVJT dapat menghasilkan kualitas lulusan, kualitas proses penyelenggaraan pembelajaran, penelitian dan pengabdian kepada masyarakat dengan kompetensi dan kapabilitas tinggi, serta memiliki kemampuan kewirausahaan dibidang IT (IT preneurship), serta memiliki kemampuan beradaptasi dalam berbagai perubahan global.\n\n'
                  'Seiring dengan berjalannya waktu, Fakultas Ilmu Komputer dituntut untuk terus menata diri dan mengelola kegiatannya, sehingga kinerja dan capaian luarannya semakin produktif guna memenuhi target-target kebutuhan capaian di tingkat universitas. Perencanaan strategis beserta evaluasi lembaga harus dilakukan melalui sistem dan mekanisme dengan parameter yang baik dengan melibatkan seluruh unsur lembaga melalui diskusi yang konstruktif agar bisa dihasilkan perencanaan program yang terarah, realistis, berkelanjutan, dan dapat dijabarkan dalam setiap langkah operasional teknis oleh seluruh Civitas Akademika Fakultas Ilmu Komputer.\n\n'
                  'Pembahasan rencana strategis dimaksudkan untuk memudahkan segala persiapan Fakultas Ilmu Komputer untuk menyusun program-program kerja dalam rangka mewujudkan visi fakultas yang telah diselaraskan dengan visi universitas. Rencana Strategis Fakultas Ilmu Komputer 2020-2024 disusun untuk mendukung tercapainya indikator kinerja fakultas yang dibangun berdasarkan masukan dari Dosen, Mahasiswa, Tenaga Kependidikan, Alumni, Masyarakat/ Stakeholders secara umum. Oleh karena itu, dibutuhkan adanya rencana strategis fakultas yang seiring dan sejalan dengan rencana strategis universitas.',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class VisiMisiDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Visi, Misi, dan Tujuan'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Visi',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Berdasarkan Visi Universitas, maka Fakultas Ilmu Komputer UPNVJT merumuskan visinya yakni “MENJADI FAKULTAS ILMU KOMPUTER YANG UNGGUL BERKARAKTER BELA NEGARA”. Visi ini diharapkan akan dapat dicapai pada tahun 2039.\n\nPada rentang tahun 2020 sampai 2024, arah kebijakan UPNVJT adalah pada penguatan kapabilitas kelembagaan yang berorientasi pendidikan dan riset yang berkarakter bela negara untuk meningkatkan daya saing di tingkat ASEAN, dengan didukung oleh SDM yang memiliki kepakaran dan keunggulan riset. Maka dari itu, Fakultas Ilmu Komputer akan menjadikan renstra universitas tersebut sebagai acuan utama dalam merencanakan dan menyelenggarakan program-program kegiatannya.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                'Misi',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Berdasarkan pada Visi tahun 2020 – 2024, maka Misi Fakultas Ilmu Komputer pada tahap ini adalah:\n\n- Menyelenggarakan dan mengembangkan pendidikan dalam bidang teknologi informasi yang berkarakter bela negara guna membentuk Pelajar Pancasila,\n- Meningkatkan budaya riset dalam pengembangan bidang teknologi informasi yang berdayaguna untuk kesejahteraan masyarakat,\n- Menyelenggarakan pengabdian kepada masyarakat berbasis riset teknologi informasi dan kearifan lokal,\n- Menyelenggarakan tata kelola yang baik dan bersih dalam rangka mencapai akuntabilitas pengelolaan keuangan,\n- Mengembangkan kualitas sumber daya manusia unggul dalam sikap dan tata nilai, unjuk kerja, penguasaan pengetahuan, dan manajerial,\n- Meningkatkan sistem pengelolaan sarana dan prasarana terpadu serta tersedianya infrastruktur, dan fasilitas pendidikan yang berkeadilan dan dapat menunjang kebutuhan inklusi,\n- Meningkatkan kerjasama dengan stakeholders baik dalam dan luar negeri.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                'Tujuan',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Sesuai dengan Misi yang telah ditetapkan, maka dirumuskan tujuan yang ingin dicapai oleh Fakultas Ilmu Komputer UPNVJT tahun 2020 – 2024 sebagai berikut:\n\n- Menghasilkan lulusan yang memiliki kemampuan di bidang teknologi informasi yang memenuhi Kerangka Kualifikasi Nasional Indonesia (KKNI) berbasis bela negara dan memiliki kecakapan hidup, sigap terhadap perubahan, dan mempunyai kemampuan lifelong learning,\n- Menghasilkan karya riset yang inovatif untuk pengembangan teknologi informasi yang berdayaguna bagi peningkatan kesejahteraan masyarakat,\n- Menerapkan IPTEKS yang berbasis riset teknologi informasi dan kearifan lokal untuk pengabdian kepada masyarakat,\n- Terwujudnya penyelenggaraan tata kelola Fakultas yang baik dan bersih untuk mencapai akuntabilitas keuangan,\n- Terwujudnya sumber daya manusia unggul yang kompeten dan berdaya saing tinggi,\n- Terwujudnya sarana prasarana yang memadai dengan pengelolaan yang efektif dan efisien serta tersedianya infrastruktur dan fasilitas pendidikan yang berkeadilan dan dapat menunjang kebutuhan inklusi,\n- Terwujudnya kerjasama institusional dengan stakeholder baik dalam dan luar negeri yang intensif dan menguntungkan kedua belah pihak.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                'Sasaran',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Sasaran strategis Fakultas difokuskan pada 7 (tujuh) bidang yang meliputi:\n\n1. Bidang Pendidikan dan Pengajaran,\n\n- Dihasilkannya lulusan yang memiliki sertifikasi kompetensi karakter bela negara dan legitimasi sebagai Pelajar Pancasila,\n- Dihasilkannya lulusan yang kompeten sesuai visi keilmuan prodi, memiliki daya saing, dan kemampuan lifelong learning dengan menerapkan penjaminan mutu pada kualitas lulusan dan proses belajar mengajar.\n\n2. Bidang Penelitian,\n\n- Peningkatan partisipasi, habituasi, dan kemampuan pendidik sebagai peneliti untuk menghasilkan riset-riset unggulan di bidang teknologi informasi,\n- Dihasilkannya produk penelitian yang berorientasi pada inovasi, pemecahan masalah, dan pengembangan ilmu dengan publikasi tingkat nasional dan internasional serta memiliki HKI.\n\n3. Bidang Pengabdian kepada Masyarakat,\n\n- Peningkatan kegiatan pengabdian kepada masyarakat yang berbasis riset teknologi informasi dan kearifan lokal untuk pemecahan masalah dan pemberdayaan masyarakat.\n\n4. Bidang Organisasi dan Keuangan,\n\n- Peningkatan kepemimpinan dan pengelolaan Fakultas dalam bidang Tridharma Perguruan Tinggi menuju good governance dengan berbasis teknologi informasi dan komunikasi,\n- Peningkatan   kapabilitas dan efisiensi pengelolaan keuangan.\n\n5. Bidang Sumber Daya Manusia (SDM),\n\n- Peningkatan kualitas sumber daya manusia dosen dan tenaga kependidikan untuk mendukung program pendidikan, penelitian, dan pengabdian kepada masyarakat.\n\n6. Bidang Sarana dan Prasarana,\n\n- Tersedianya sarana prasarana serta akses yang memadai untuk mendukung kegiatan Tridharma dan pendukungnya,\n- Pengembangan sistem informasi yang terintegrasi untuk layanan kepada civitas academica Fakultas Ilmu Komputer,\n- Tersedianya infrastruktur dan fasilitas pendidikan yang berkeadilan dan dapat menunjang kebutuhan inklusi.\n\n7. Bidang Kerjasama,\n\n- Terimplementasinya kerjasama institusional dalam bidang Tridharma dengan stakeholder baik dalam maupun luar negeri yang menguntungkan kedua belah pihak,\n- Peningkatan kualitas dan kuantitas kerjasama nasional dan internasional yang adaptif dan responsif terhadap isu terkini.',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
