import 'package:flutter/material.dart';
import '../widgets/page_fcd.dart';
import '../widgets/title_appbar.dart';

class BagianTubuhPage extends StatefulWidget {
  const BagianTubuhPage({super.key});

  @override
  State<BagianTubuhPage> createState() => _BagianTubuhPageState();
}

class _BagianTubuhPageState extends State<BagianTubuhPage> {
  int indexFile = 1;
  int sumImages = 12;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const TitleAppBar(
          text: "Bagian Tubuh",
        ),
      ),
      body: PageFcD(
        indexFile: indexFile,
        sumImages: sumImages,
        folderName: "bagian-tubuh",
      ),
    );
  }
}
