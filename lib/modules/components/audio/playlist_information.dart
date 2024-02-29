

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/playlist_model.dart';

class PlaylistInformation extends StatelessWidget {
  const PlaylistInformation({super.key, required this.playlist});
  final Playlist playlist;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Image.network(
            playlist.imageUrl,
            height: MediaQuery.of(context).size.height * 0.42,
            width: MediaQuery.of(context).size.width * 0.55,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 30),
        Text(
          playlist.title,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ],
    );
  }
}
