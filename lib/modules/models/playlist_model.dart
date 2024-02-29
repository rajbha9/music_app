

import 'package:media_booster_app/modules/models/song_model.dart';

class Playlist {
  final String title;
  final List<Song> songs;
  final String imageUrl;

  Playlist({
    required this.title,
    required this.songs,
    required this.imageUrl,
  });
  static List<Playlist> playlist = [
    Playlist(
      title: 'Hip-hop R&B Mix',
      songs: Song.songs,
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1-OALa6vL7D9VfuBjJSbLR1uyD33MwRGWLQ',
    ),
    Playlist(
      title: 'Rock & Roll',
      songs: Song.songs,
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpeRN8SNArPbGe3ISF3znKJ2ISnifl916yJQ&usqp=CAU',
    ),
    Playlist(
      title: 'Techno',
      songs: Song.songs,
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_R7Yz0P9zwqktYVPiNUELDgBradHpApkl_g',
    ),
  ];
}
