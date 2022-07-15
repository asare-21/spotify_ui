import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spotify_ui/config/app_config.dart';
import 'package:spotify_ui/config/navigation_provider.dart';
import 'package:spotify_ui/screens/main_screen.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => NavProvider()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spotify',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(context).apptheme,
      home: const MainScreen(),
    );
  }
}
