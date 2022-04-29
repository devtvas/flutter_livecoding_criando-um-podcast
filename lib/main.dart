import 'package:flutter/material.dart';
import 'package:live_coding_dio_podcast/app/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Live Coding Dio',
      home: HomeView(),
    );
  }
}
