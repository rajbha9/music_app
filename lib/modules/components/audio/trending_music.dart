import 'package:flutter/material.dart';
import 'package:media_booster_app/modules/components/audio/section_header.dart';

import '../../models/song_model.dart';
import '../../views/screen/songscreen.dart';

class TrendingMusic extends StatelessWidget {
  const TrendingMusic({
    super.key,
    required this.song,
  });

  final List<Song> song;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
              title: 'Trading Music',
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.27,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: song.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(
                    right: 10,
                  ),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      InkWell(
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
                          width: MediaQuery.of(context).size.width * 0.45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage(song[index].coverUrl),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.37,
                        margin: const EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white.withOpacity(0.8),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  song[index].title,
                                  style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.deepPurple),
                                ),
                                Text(
                                  song[index].desc,
                                  style: const TextStyle(
                                      fontSize: 11.3,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.deepPurple),
                                ),
                              ],
                            ),
                            const Icon(
                              Icons.play_circle,
                              color: Colors.deepPurple,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
