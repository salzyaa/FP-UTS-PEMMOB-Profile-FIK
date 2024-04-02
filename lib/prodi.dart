class Prodi {
  final String label;
  final String imageUrl;
  final String websiteUrl;

  Prodi({
    required this.label,
    required this.imageUrl,
    this.websiteUrl = '',
  });

  static List<Prodi> samples = [
    Prodi(
      imageUrl: 'assets/informatika.jpg',
      label: 'Informatika',
      websiteUrl: 'https://if.upnjatim.ac.id/',
    ),
    Prodi(
      imageUrl: 'assets/sifo.jpg',
      label: 'Sistem Informasi',
      websiteUrl: 'https://sisfo.upnjatim.ac.id/',
    ),
    Prodi(
      imageUrl: 'assets/sada.png',
      label: 'Sains Data',
      websiteUrl: 'https://sada.upnjatim.ac.id/',
    ),
    Prodi(
      imageUrl: 'assets/bisdi.png',
      label: 'Bisnis Digital',
      websiteUrl: 'https://bisdi.upnjatim.ac.id/',
    ),
    Prodi(
      imageUrl: 'assets/teknologi_informasi.png',
      label: 'Magister Teknologi Informasi',
      websiteUrl: 'https://mti.upnjatim.ac.id/',
    ),
  ];
}
