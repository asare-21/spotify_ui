import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:spotify_ui/config/app_config.dart';

class Playlist extends StatefulWidget {
  const Playlist({Key? key}) : super(key: key);

  @override
  State<Playlist> createState() => _PlaylistState();
}

class _PlaylistState extends State<Playlist> {
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
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 200,
        child: GridView.builder(
          itemCount: samples.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3.2,
            crossAxisSpacing: 6,
            mainAxisSpacing: 6,
          ),
          itemBuilder: (context, index) => playlistCard(
            context,
            samples[index],
          ),
        ),
      ),
    );
  }
}

class PlayListModel {
  final String title, imagePath;
  PlayListModel({required this.title, required this.imagePath});
}

Widget playlistCard(BuildContext context, PlayListModel model) {
  return ClipRRect(
    borderRadius: const BorderRadius.only(
        topRight: Radius.circular(5), bottomRight: Radius.circular(5)),
    child: Card(
      color: grey,
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              height: double.infinity,
              child: CachedNetworkImage(
                imageUrl: model.imagePath,
                imageBuilder: (context, imageProvider) => Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                placeholder: (context, url) => const SizedBox(
                    height: 20,
                    width: 20,
                    child: Center(
                        child: CircularProgressIndicator.adaptive(
                      backgroundColor: coffeBlack,
                    ))),
                errorWidget: (context, url, error) => const SizedBox(
                    height: 30,
                    width: 30,
                    child: Center(
                        child: Icon(
                      Icons.error,
                      color: coffeBlack,
                    ))),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    model.title,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(fontWeight: FontWeight.bold, color: white),
                    overflow: TextOverflow.ellipsis,
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
