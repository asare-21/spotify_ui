import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:spotify_ui/widgets/playlist.dart';

import '../config/app_config.dart';

class HotMixes extends StatefulWidget {
  const HotMixes({Key? key}) : super(key: key);

  @override
  State<HotMixes> createState() => _HotMixesState();
}

List<PlayListModel> samples = [
  PlayListModel(
      title: 'William McDowell',
      imagePath:
          "https://i.scdn.co/image/ab6761610000e5eb9363861c9a4b3984528ed966"),
  PlayListModel(
      title: 'Friday Night',
      imagePath:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqESD-fvAXbNLeAasnpFq7bpjpeTR6_oAAMnA1ZORSkq_Q1oB_P7xe7d4Z-GmEFmCCuH8&usqp=CAU"),
  PlayListModel(
      title: 'On Repeat',
      imagePath:
          "https://daily-mix.scdn.co/covers/on_repeat/PZN_On_Repeat2_LARGE-en.jpg"),
  PlayListModel(
      title: 'Liked Songs',
      imagePath:
          "https://i1.sndcdn.com/artworks-4Lu85Xrs7UjJ4wVq-vuI2zg-t500x500.jpg"),
  PlayListModel(
      title: 'Black Sherif Mix',
      imagePath:
          "https://i0.wp.com/xclusiveloaded.com/wp-content/uploads/2022/04/Black-Sherif-scaled.jpg?fit=819%2C1024&ssl=1"),
  PlayListModel(
      title: 'Ghana Top',
      imagePath:
          "https://i.scdn.co/image/ab67706c0000bebb8506a1e9c067cdc7274d0064")
];

class _HotMixesState extends State<HotMixes> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            'Your top mixes',
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(color: white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 140,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  tile(context, samples[0]),
                  tile(context, samples[1]),
                  tile(context, samples[2]),
                ],
              ))
        ],
      ),
    );
  }
}

Widget tile(BuildContext context, PlayListModel model) {
  return Card(
    child: SizedBox(
      height: 140,
      width: 140,
      child: Stack(
        // fit: StackFit.expand,
        children: [
          CachedNetworkImage(
            height: 140,
            width: 140,
            imageUrl: model.imagePath,
            fit: BoxFit.cover,
          ),
          Positioned(
              bottom: 1,
              left: 0,
              right: 0,
              child: ListTile(
                title: Text(
                  model.title,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(color: white, fontWeight: FontWeight.bold),
                ),
              )),
          const Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: LinearProgressIndicator(
              color: blue,
              value: 1,
            ),
          )
        ],
      ),
    ),
  );
}
