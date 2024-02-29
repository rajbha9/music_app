import 'package:flutter/material.dart';
import 'package:media_booster_app/modules/views/screen/songscreen.dart';

import '../../components/audio/discover_music.dart';
import '../../components/audio/section_header.dart';
import '../../components/cusmot_app_bar.dart';
import '../../components/custom_nav_bar.dart';
import '../../models/playlist_model.dart';
import '../../models/song_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List<Song> song = Song.songs;
    List<Playlist> playlists = Playlist.playlist;
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xff451952),
            Color(0xffF39F5A),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: const CustomAppBar(),
        bottomNavigationBar: const CustomNavbar(),
        body: ListView(
          children: [
            const DiscoverMusic(),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                top: 20,
                bottom: 20,
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: SectionHeader(
                      title: 'Song List',
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 500,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: song.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SongScreen(
                                  songIndex: index,
                                  songList: Song.songs,
                                ),
                              ),
                            );
                          },
                          child: Container(
                            margin: const EdgeInsets.only(
                              right: 10,
                            ),
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Container(
                                  width: 250,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                      image: AssetImage(song[index].coverUrl),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 80,
                                  width: 220,
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: Colors.white.withOpacity(0.8),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            song[index].title,
                                            style: const TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.deepPurple),
                                          ),
                                          Text(
                                            song[index].desc,
                                            style: const TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.deepPurple),
                                          ),
                                        ],
                                      ),
                                      const Icon(
                                        Icons.play_circle,
                                        color: Colors.deepPurple,
                                        size: 35,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
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
