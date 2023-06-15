import 'package:flutter/material.dart';

import '../widgets/page_fcd.dart';
import '../widgets/title_appbar.dart';

class NamaNamaBendaDiAlamPage extends StatefulWidget {
  const NamaNamaBendaDiAlamPage({super.key});

  @override
  State<NamaNamaBendaDiAlamPage> createState() =>
      _NamaNamaBendaDiAlamPageState();
}

class _NamaNamaBendaDiAlamPageState extends State<NamaNamaBendaDiAlamPage> {
  int indexFile = 1;
  int sumImages = 11;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const TitleAppBar(
          text: "Nama-nama Benda di Alam",
        ),
      ),
      body: PageFcD(
        indexFile: indexFile,
        sumImages: sumImages,
        folderName: "nama-nama-benda-di-alam",
      ),
    );
  }
}
