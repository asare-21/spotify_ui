import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:spotify_ui/config/app_config.dart';

class PlayingSong extends StatefulWidget {
  const PlayingSong({Key? key}) : super(key: key);

  @override
  State<PlayingSong> createState() => _PlayingSongState();
}

class _PlayingSongState extends State<PlayingSong> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        height: 104,
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          color: grey,
          child: Column(
            children: [
              Row(
                children: [
                  CachedNetworkImage(
                    height: 70,
                    width: 70,
                    imageUrl:
                        "https://i.scdn.co/image/ab67706f0000000380b15927d3e127f3fa261b27",
                    fit: BoxFit.cover,
                  ),
                  Expanded(
                      child: ListTile(
                    title: Text(
                      "Friday Night",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(color: white, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      "Lasmid",
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(color: white),
                    ),
                    trailing: SizedBox(
                      width: 80,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Icon(Icons.speaker, color: white),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(Icons.play_arrow, color: white),
                            SizedBox(
                              width: 10,
                            ),
                          ]),
                    ),
                  )),
                ],
              ),
              const LinearProgressIndicator(
                value: .8,
              )
            ],
          ),
        ));
  }
}
