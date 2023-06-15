import 'package:bandungan/common/theme.dart';
import 'package:bandungan/pages/alat_alat_tulis_page.dart';
import 'package:bandungan/pages/bagian_tubuh_page.dart';
import 'package:bandungan/pages/kata_benda_page.dart';
import 'package:bandungan/pages/makanan_page.dart';
import 'package:bandungan/pages/nama_hari_dan_bulan_page.dart';
import 'package:bandungan/pages/nama_hewan_page.dart';
import 'package:bandungan/pages/nama_kendaraan_page.dart';
import 'package:bandungan/pages/nama_nama_benda_di_alam_page.dart';
import 'package:bandungan/widgets/drawer_item.dart';
import 'package:bandungan/widgets/page_fcd.dart';
import 'package:bandungan/widgets/title_appbar.dart';
import 'package:flutter/material.dart';

class KataKerjaPage extends StatefulWidget {
  const KataKerjaPage({super.key});

  @override
  State<KataKerjaPage> createState() => _KataKerjaPageState();
}

class _KataKerjaPageState extends State<KataKerjaPage> {
  int sumImages = 11;
  int indexFile = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TitleAppBar(
          text: "Kata Kerja",
        ),
        centerTitle: true,
      ),
      drawer: const NavigationDrawer(),
      body: PageFcD(
        indexFile: indexFile,
        sumImages: sumImages,
        folderName: "kata-kerja",
      ),
    );
  }
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            buildHeader(context),
            buildMenuItems(context),
          ],
        ),
      ),
    );
  }
}

Widget buildHeader(BuildContext buildContext) => Container(
      height: 300,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(15),
        ),
      ),
      padding: const EdgeInsets.only(top: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                height: 100,
                width: 200,
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              Column(
                children: [
                  Text(
                    "FlashCard",
                    style: primaryTextStyle.copyWith(
                      color: Colors.blue,
                      fontSize: 30,
                      fontWeight: bold,
                    ),
                  ),
                  Text(
                    "Digital",
                    style: primaryTextStyle.copyWith(
                      color: Colors.blue,
                      fontSize: 30,
                      fontWeight: bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Aplikasi belajar bahasa digital dengan menggunakan latihan kosakata Bahasa Indonesia dan Bahasa Sunda.",
            textAlign: TextAlign.center,
            style: primaryTextStyle.copyWith(
              color: white,
            ),
          ),
        ],
      ),
    );

Widget buildMenuItems(BuildContext context) => Column(
      children: [
        DrawerItem(
          text: "Kata Kerja",
          onTap: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => const KataKerjaPage(),
              ),
            );
          },
        ),
        DrawerItem(
          text: "Kata Benda",
          onTap: () {
            Navigator.of(context).pop();
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const KataBendaPage(),
              ),
            );
          },
        ),
        DrawerItem(
          text: "Alat-alat Tulis",
          onTap: () {
            Navigator.of(context).pop();
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const AlatAlatTulisPage(),
              ),
            );
          },
        ),
        DrawerItem(
          text: "Bagian Tubuh",
          onTap: () {
            Navigator.of(context).pop();
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const BagianTubuhPage(),
              ),
            );
          },
        ),
        DrawerItem(
          text: "Nama Hari dan Bulan",
          onTap: () {
            Navigator.of(context).pop();
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const NamaHariDanBulanPage(),
              ),
            );
          },
        ),
        DrawerItem(
          text: "Nama Kendaraan",
          onTap: () {
            Navigator.of(context).pop();
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const NamaKendaraanPage(),
              ),
            );
          },
        ),
        DrawerItem(
          text: "Nama-nama Benda di Alam",
          onTap: () {
            Navigator.of(context).pop();
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const NamaNamaBendaDiAlamPage(),
              ),
            );
          },
        ),
        DrawerItem(
          text: "Makanan",
          onTap: () {
            Navigator.of(context).pop();
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const MakananPage(),
              ),
            );
          },
        ),
        DrawerItem(
          text: "Nama Hewan",
          onTap: () {
            Navigator.of(context).pop();
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const NamaHewanPage(),
              ),
            );
          },
        ),
      ],
    );
