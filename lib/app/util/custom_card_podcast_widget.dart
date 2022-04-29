import 'package:flutter/material.dart';

class CustomCardPodcastWidget extends StatelessWidget {
  /// Creates a card custom.
  ///
  /// colorThemeText is default (true).
  /// * If [colorThemeText] is true, this colorThemeText return Colors.grey.
  /// * If [colorThemeText] is false, this colorThemeText return Colors.white70.
  ///
  ///
  const CustomCardPodcastWidget({
    Key? key,
    this.colorThemeText = true,
    required this.img,
    required this.title,
    required this.description,
    required this.color,
    required this.icon,
    required this.click,
  }) : super(key: key);
  final bool colorThemeText;
  final String img;
  final String title;
  final String description;
  final Color color;
  final Icon icon;
  final Function()? click;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(img), fit: BoxFit.cover)),
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 200,
                  child: Text(
                    title,
                    style: TextStyle(
                        color: colorThemeText ? Colors.grey : Colors.white70),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Container(
                  width: 200,
                  child: Text(
                    description,
                    style: TextStyle(
                        color: colorThemeText ? Colors.grey : Colors.white70),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            )
          ],
        ),
        Container(
          width: 40,
          height: 30,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
          ),
          child: InkWell(onTap: click, child: icon),
        )
      ],
    );
  }
}
