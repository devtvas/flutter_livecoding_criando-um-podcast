import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:live_coding_dio_podcast/app/util/custom_btn_category_widget.dart';
import 'package:live_coding_dio_podcast/app/util/custom_color.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
              )
            ],
          ),
        ),
      ),
    );
  }
}
