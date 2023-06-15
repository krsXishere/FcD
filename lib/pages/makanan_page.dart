import 'package:flutter/material.dart';

import '../widgets/page_fcd.dart';
import '../widgets/title_appbar.dart';

class MakananPage extends StatefulWidget {
  const MakananPage({super.key});

  @override
  State<MakananPage> createState() => _MakananPageState();
}

class _MakananPageState extends State<MakananPage> {
  int indexFile = 1;
  int sumImages = 11;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const TitleAppBar(
          text: "Makanan",
        ),
      ),
      body: PageFcD(
        indexFile: indexFile,
        sumImages: sumImages,
        folderName: "makanan",
      ),
    );
  }
}
