class Song {
  String title;
  String desc;
  String url;
  String coverUrl;
  Song({
    required this.title,
    required this.desc,
    required this.url,
    required this.coverUrl,
  });

  static List<Song> songs = [
    Song(
      title: 'Matla Upar Matlu',
      desc: 'Matla Upar Matlu',
      url: 'assets/music/m1.mp3',
      coverUrl: 'assets/img/img1.jpg',
    ),
    Song(
      title: 'Maan Meri Jaan',
      desc: 'Maan Meri Jaan',
      url: 'assets/music/m2.mp3',
      coverUrl: 'assets/img/img2.jpg',
    ),
    Song(
      title: 'Let’s Naacho!',
      desc: 'Let’s Naacho! ',
      url: 'assets/music/m3.mp3',
      coverUrl: 'assets/img/img3.jpg',
    ),
    Song(
      title: 'Jhoome Jo Pathaan',
      desc: 'Jhoome Jo Pathaan',
      url: 'assets/music/m4.mp3',
      coverUrl: 'assets/img/img4.jpg',
    ),
    Song(
      title: 'Chand Wala Mukhda',
      desc: 'Chand Wala ',
      url: 'assets/music/m5.mp3',
      coverUrl: 'assets/img/img5.jpg',
    ),
    Song(
      title: 'Arijit Singhs 2023',
      desc: '💖Romantic Songs 2023💖',
      url: 'assets/music/m6.mp3',
      coverUrl: 'assets/img/img6.jpg',
    ),
    Song(
      title: 'Malang Sajna',
      desc: 'Malang Sajna',
      url: 'assets/music/m7.mp3',
      coverUrl: 'assets/img/img7.jpg',
    ),
  ];
}
