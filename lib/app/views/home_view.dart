import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:live_coding_dio_podcast/app/util/custom_btn_category_widget.dart';
import 'package:live_coding_dio_podcast/app/util/custom_card_podcast_widget.dart';
import 'package:live_coding_dio_podcast/app/util/custom_color.dart';
import 'package:live_coding_dio_podcast/app/views/podcast_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool isPlaying = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        SvgPicture.asset("assets/logo.svg",
                            width: 40, height: 40),
                      ],
                    ),
                    Row(
                      children: const [
                        Text(
                          "Dio",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.w800),
                        ),
                        Text(
                          "Cast",
                          style: TextStyle(
                              color: CustomColor.pink700,
                              fontSize: 30,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.only(right: 2, left: 20),
                // height: MediaQuery.of(context).size.height * 0.9,
                height: 35,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    CustomBtnCategoryWidget(
                      color: CustomColor.pink700,
                      text: 'Kotlin',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CustomBtnCategoryWidget(
                      color: CustomColor.pink700,
                      text: 'JAVA',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CustomBtnCategoryWidget(
                      color: CustomColor.pink700,
                      text: 'FLUTTER',
                    )
                  ],
                ),
              ),
              Center(
                child: Container(
                  padding: const EdgeInsets.fromLTRB(25, 30, 25, 0),
                  child: const Text(
                    "Podcasts Recentes",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              isPlaying
                  ? Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Container(),
                            ),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          width: double.infinity,
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(colors: [])),
                        ),
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 25),
                      child: Container(
                        // color: Colors.red,
                        height: MediaQuery.of(context).size.height * 0.8,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              // Text("oi"),
                              CustomCardPodcastWidget(
                                img: "assets/philips.jpg",
                                title: "Bootcamp Spread Java Developer",
                                description: "Bootcamp Java Developer",
                                click: () {
                                  setState(() {
                                    isPlaying = !isPlaying;
                                  });
                                },
                                icon: Icon(
                                  isPlaying ? Icons.pause : Icons.play_arrow,
                                  color: Colors.white,
                                ),
                                color: isPlaying
                                    ? CustomColor.pink700
                                    : CustomColor.gray700,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              CustomCardPodcastWidget(
                                img: "assets/philips.jpg",
                                title: "Spread Java Developer",
                                description: "Bootcamp Spread Java Developer",
                                click: () {
                                  setState(() {
                                    isPlaying = !isPlaying;
                                  });
                                },
                                icon: Icon(
                                  isPlaying ? Icons.pause : Icons.play_arrow,
                                  color: Colors.white,
                                ),
                                color: isPlaying
                                    ? CustomColor.pink700
                                    : CustomColor.gray700,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              CustomCardPodcastWidget(
                                img: "assets/philips.jpg",
                                title: "Spread Java Developer",
                                description: "Bootcamp Spread Java Developer",
                                click: () {
                                  setState(() {
                                    isPlaying = !isPlaying;
                                  });
                                },
                                icon: Icon(
                                  isPlaying ? Icons.pause : Icons.play_arrow,
                                  color: Colors.white,
                                ),
                                color: isPlaying
                                    ? CustomColor.pink700
                                    : CustomColor.gray700,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              CustomCardPodcastWidget(
                                img: "assets/philips.jpg",
                                title: "Spread Java Developer",
                                description: "Bootcamp Spread Java Developer",
                                click: () {
                                  setState(() {
                                    isPlaying = !isPlaying;
                                  });
                                },
                                icon: Icon(
                                  isPlaying ? Icons.pause : Icons.play_arrow,
                                  color: Colors.white,
                                ),
                                color: isPlaying
                                    ? CustomColor.pink700
                                    : CustomColor.gray700,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              CustomCardPodcastWidget(
                                img: "assets/philips.jpg",
                                title: "Spread Java Developer",
                                description: "Bootcamp Spread Java Developer",
                                click: () {
                                  setState(() {
                                    isPlaying = !isPlaying;
                                  });
                                },
                                icon: Icon(
                                  isPlaying ? Icons.pause : Icons.play_arrow,
                                  color: Colors.white,
                                ),
                                color: isPlaying
                                    ? CustomColor.pink700
                                    : CustomColor.gray700,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              CustomCardPodcastWidget(
                                img: "assets/philips.jpg",
                                title: "Spread Java Developer",
                                description: "Bootcamp Spread Java Developer",
                                click: () {
                                  setState(() {
                                    isPlaying = !isPlaying;
                                  });
                                },
                                icon: Icon(
                                  isPlaying ? Icons.pause : Icons.play_arrow,
                                  color: Colors.white,
                                ),
                                color: isPlaying
                                    ? CustomColor.pink700
                                    : CustomColor.gray700,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              CustomCardPodcastWidget(
                                img: "assets/philips.jpg",
                                title: "Spread Java Developer",
                                description: "Bootcamp Spread Java Developer",
                                click: () {
                                  setState(() {
                                    isPlaying = !isPlaying;
                                  });
                                },
                                icon: Icon(
                                  isPlaying ? Icons.pause : Icons.play_arrow,
                                  color: Colors.white,
                                ),
                                color: isPlaying
                                    ? CustomColor.pink700
                                    : CustomColor.gray700,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              CustomCardPodcastWidget(
                                img: "assets/philips.jpg",
                                title: "Spread Java Developer",
                                description: "Bootcamp Spread Java Developer",
                                click: () {
                                  setState(() {
                                    isPlaying = !isPlaying;
                                  });
                                },
                                icon: Icon(
                                  isPlaying ? Icons.pause : Icons.play_arrow,
                                  color: Colors.white,
                                ),
                                color: isPlaying
                                    ? CustomColor.pink700
                                    : CustomColor.gray700,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              CustomCardPodcastWidget(
                                img: "assets/philips.jpg",
                                title: "Spread Java Developer",
                                description: "Bootcamp Spread Java Developer",
                                click: () {
                                  setState(() {
                                    isPlaying = !isPlaying;
                                  });
                                },
                                icon: Icon(
                                  isPlaying ? Icons.pause : Icons.play_arrow,
                                  color: Colors.white,
                                ),
                                color: isPlaying
                                    ? CustomColor.pink700
                                    : CustomColor.gray700,
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
            ],
          ),
        ),
      ),
    );
  }
}
