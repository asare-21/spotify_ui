import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:spotify_ui/config/app_config.dart';
import 'package:spotify_ui/config/navigation_provider.dart';
import 'package:spotify_ui/widgets/bottomNavigationBar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.light,
        backgroundColor: coffeBlack,
        elevation: 0,
        centerTitle: false,
        title: Text('Good Afternoon',
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(color: white, fontWeight: FontWeight.bold)),
        actions: [
          IconButton(
            icon: Badge(
                badgeColor: blue,
                position: BadgePosition.topStart(top: 0, start: 0),
                badgeContent: const Icon(
                  Icons.circle,
                  color: blue,
                  size: 1,
                ),
                child: const FaIcon(FontAwesomeIcons.bell)),
            onPressed: () {},
          ),
          IconButton(
            icon: const FaIcon(FontAwesomeIcons.clock),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.settings_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: context.watch<NavProvider>().currentPage,
      bottomNavigationBar: const MyBottomNavigationBar(),
    );
  }
}
