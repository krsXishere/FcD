import 'package:bandungan/pages/kata_kerja_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        highlightColor: Colors.transparent.withOpacity(0.0),
        splashColor: Colors.transparent.withOpacity(0.0),
        splashFactory: NoSplash.splashFactory,
      ),
      home: const KataKerjaPage(),
    );
  }
}
