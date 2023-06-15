import 'package:flutter/material.dart';

import '../widgets/page_fcd.dart';
import '../widgets/title_appbar.dart';

class NamaKendaraanPage extends StatefulWidget {
  const NamaKendaraanPage({super.key});

  @override
  State<NamaKendaraanPage> createState() => _NamaKendaraanPageState();
}

class _NamaKendaraanPageState extends State<NamaKendaraanPage> {
  int indexFile = 1;
  int sumImages = 11;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const TitleAppBar(
          text: "Nama Kendaraan",
        ),
      ),
      body: PageFcD(
        indexFile: indexFile,
        sumImages: sumImages,
        folderName: "nama-kendaraan",
      ),
    );
  }
}
