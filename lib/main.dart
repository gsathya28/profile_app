import 'package:flutter/material.dart';
import 'package:profile_app/pages/profile_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile App',
      routes: {
        '/': (context) => const ProfilePage(),
      },
    );
  }
}
