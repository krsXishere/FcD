import 'package:flutter/material.dart';

import '../widgets/page_fcd.dart';
import '../widgets/title_appbar.dart';

class NamaHewanPage extends StatefulWidget {
  const NamaHewanPage({super.key});

  @override
  State<NamaHewanPage> createState() => _NamaHewanPageState();
}

class _NamaHewanPageState extends State<NamaHewanPage> {
  int indexFile = 1;
  int sumImages = 11;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const TitleAppBar(
          text: "Nama Hewan",
        ),
      ),
      body: PageFcD(
        indexFile: indexFile,
        sumImages: sumImages,
        folderName: "nama-hewan",
      ),
    );
  }
}
