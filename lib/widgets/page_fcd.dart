import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../common/theme.dart';

// ignore: must_be_immutable
class PageFcD extends StatefulWidget {
  int indexFile;
  int sumImages;
  String folderName;

  PageFcD({
    super.key,
    required this.indexFile,
    required this.sumImages,
    required this.folderName,
  });

  @override
  State<PageFcD> createState() => _PageFcDState();
}

class _PageFcDState extends State<PageFcD> {
  final pageController = PageController();
  final audioPlayer = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        PageView.builder(
          onPageChanged: (value) {
            setState(() {
              int newValue = value + 1;
              widget.indexFile = newValue;
            });
          },
          physics: const BouncingScrollPhysics(),
          controller: pageController,
          itemCount: widget.sumImages,
          itemBuilder: (context, index) {
            int filesName = index + 1;

            return Container(
              height: double.infinity,
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(
                "assets/images/${widget.folderName}/$filesName.jpg",
                fit: BoxFit.cover,
              ),
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            bottom: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              widget.indexFile == 1
                  ? Container()
                  : CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.grey[400]?.withOpacity(0.7),
                      child: IconButton(
                        tooltip: "Sebelumnya",
                        onPressed: () {
                          pageController.previousPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        },
                        icon: Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: white,
                        ),
                      ),
                    ),
              widget.indexFile == widget.sumImages
                  ? Container()
                  : CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.grey[400]?.withOpacity(0.7),
                      child: IconButton(
                        tooltip: "Selanjutnya",
                        onPressed: () {
                          pageController.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        },
                        icon: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: white,
                        ),
                      ),
                    ),
            ],
          ),
        ),
        widget.indexFile == 1
            ? SizedBox(
                height: 80,
                width: 250,
                child: OutlinedButton(
                  style: ButtonStyle(
                    side: MaterialStateBorderSide.resolveWith((states) {
                      if (states.contains(MaterialState.disabled)) {
                        return BorderSide.none;
                      } else {
                        return BorderSide.none;
                      }
                    }),
                    backgroundColor: getColor(
                      Colors.transparent,
                      Colors.transparent,
                    ),
                    foregroundColor: getColor(
                      Colors.transparent,
                      Colors.transparent,
                    ),
                    shadowColor: getColor(
                      Colors.transparent,
                      Colors.transparent,
                    ),
                    overlayColor: getColor(
                      Colors.transparent,
                      Colors.transparent,
                    ),
                    surfaceTintColor: getColor(
                      Colors.transparent,
                      Colors.transparent,
                    ),
                  ),
                  child: Container(
                    color: Colors.transparent,
                  ),
                  onPressed: () {
                    audioPlayer.play(
                      AssetSource("sounds/${widget.folderName}/1.mp3"),
                    );
                  },
                ))
            : Visibility(
                visible: false,
                child: Container(),
              ),
        widget.indexFile != 1
            ? Positioned(
                bottom: 95,
                left: 20,
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.grey[400]?.withOpacity(0.7),
                      child: IconButton(
                        tooltip: "Bahasa Sunda",
                        onPressed: () {
                          audioPlayer.play(
                            AssetSource(
                                "sounds/${widget.folderName}/${widget.indexFile}.mp3"),
                          );
                        },
                        icon: SvgPicture.asset(
                          "assets/svg/speaker.svg",
                          color: white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.grey[400]?.withOpacity(0.7),
                      child: IconButton(
                        tooltip: "Bahasa Indonesia",
                        onPressed: () {
                          audioPlayer.play(
                            AssetSource(
                                "sounds/${widget.folderName}/${widget.indexFile}-2.mp3"),
                          );
                        },
                        icon: SvgPicture.asset(
                          "assets/svg/speaker.svg",
                          color: white,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            : Visibility(
                visible: false,
                child: Container(),
              ),
      ],
    );
  }
}
