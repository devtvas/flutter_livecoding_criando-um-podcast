import 'package:flutter/material.dart';

class CustomCardPodcastWidget extends StatelessWidget {
  const CustomCardPodcastWidget({
    Key? key,
    required this.img,
    required this.title,
    required this.description,
    required this.color,
    required this.icon,
    required this.click,
  }) : super(key: key);
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
                    style: const TextStyle(color: Colors.grey),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Container(
                  width: 200,
                  child: Text(
                    description,
                    style: const TextStyle(color: Colors.grey),
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
