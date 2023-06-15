import 'package:flutter/material.dart';
import '../widgets/page_fcd.dart';
import '../widgets/title_appbar.dart';

class AlatAlatTulisPage extends StatefulWidget {
  const AlatAlatTulisPage({super.key});

  @override
  State<AlatAlatTulisPage> createState() => _AlatAlatTulisPageState();
}

class _AlatAlatTulisPageState extends State<AlatAlatTulisPage> {
  int indexFile = 1;
  int sumImages = 11;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const TitleAppBar(
          text: "Alat-alat Tulis",
        ),
      ),
      body: PageFcD(
        indexFile: indexFile,
        sumImages: sumImages,
        folderName: "alat-tulis",
      ),
    );
  }
}
