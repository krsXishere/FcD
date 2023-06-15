import 'package:bandungan/widgets/page_fcd.dart';
import 'package:bandungan/widgets/title_appbar.dart';
import 'package:flutter/material.dart';

class KataBendaPage extends StatefulWidget {
  const KataBendaPage({super.key});

  @override
  State<KataBendaPage> createState() => _KataBendaPageState();
}

class _KataBendaPageState extends State<KataBendaPage> {
  int indexFile = 1;
  int sumImages = 11;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const TitleAppBar(
          text: "Kata Benda",
        ),
      ),
      body: PageFcD(
        indexFile: indexFile,
        sumImages: sumImages,
        folderName: "kata-benda",
      ),
    );
  }
}
