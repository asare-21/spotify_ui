import 'package:flutter/material.dart';
import 'package:spotify_ui/widgets/playing_song.dart';
import 'package:spotify_ui/widgets/playlist.dart';
import 'package:spotify_ui/widgets/songs_added.dart';
import 'package:spotify_ui/widgets/top_mixex.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Column(
          children: const [Playlist(), SongsAdded(), HotMixes()],
        ),
        const Positioned(bottom: -15, left: 0, right: -5, child: PlayingSong())
      ],
    );
  }
}
