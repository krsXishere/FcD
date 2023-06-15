import 'package:flutter/material.dart';

import '../widgets/page_fcd.dart';
import '../widgets/title_appbar.dart';

class NamaHariDanBulanPage extends StatefulWidget {
  const NamaHariDanBulanPage({super.key});

  @override
  State<NamaHariDanBulanPage> createState() => _NamaHariDanBulanPageState();
}

class _NamaHariDanBulanPageState extends State<NamaHariDanBulanPage> {
  int indexFile = 1;
  int sumImages = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const TitleAppBar(
          text: "Nama Hari dan Bulan",
        ),
      ),
      body: PageFcD(
        indexFile: indexFile,
        sumImages: sumImages,
        folderName: "nama-hari-dan-bulan",
      ),
    );
  }
}
