import 'package:flutter/material.dart';
import 'package:media_booster_app/modules/components/audio/playlist_card.dart';
import 'package:media_booster_app/modules/components/audio/section_header.dart';

import '../../models/playlist_model.dart';

class PlaylistMusic extends StatelessWidget {
  const PlaylistMusic({super.key, required this.playlists});
  final List<Playlist> playlists;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        
        children: [
          const SectionHeader(title: 'playlists'),
          ListView.builder(
            shrinkWrap: true,
            padding: const EdgeInsets.only(top: 20),
            physics: const NeverScrollableScrollPhysics(),
            itemCount: playlists.length,
            itemBuilder: ((context, index) {
              return PlaylistCard(playlists: playlists[index]);
            }),
          ),
        ],
      ),
    );
  }
}
