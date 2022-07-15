import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../config/app_config.dart';

class SongsAdded extends StatefulWidget {
  const SongsAdded({Key? key}) : super(key: key);

  @override
  State<SongsAdded> createState() => _SongsAddedState();
}

class _SongsAddedState extends State<SongsAdded> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'New songs added',
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(color: white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              color: grey,
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                    ),
                    child: CachedNetworkImage(
                      height: 120,
                      width: 120,
                      imageUrl:
                          "https://i.scdn.co/image/ab67706f0000000380b15927d3e127f3fa261b27",
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          child: ListTile(
                            title: Text(
                              "Hot Hits Ghana",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                      color: white,
                                      fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              "Playlist - The hotetest tracks in Ghana.\nCover: Lasmid",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(color: white),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              FaIcon(Icons.favorite, color: green),
                              FaIcon(
                                FontAwesomeIcons.play,
                                color: white,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
