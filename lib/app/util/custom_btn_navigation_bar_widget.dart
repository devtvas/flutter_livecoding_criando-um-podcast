import 'package:flutter/material.dart';
import 'package:live_coding_dio_podcast/app/util/custom_color.dart';

class CustomBtnNavigationBarWidget extends StatelessWidget {
  const CustomBtnNavigationBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: CustomColor.pink700,
      selectedFontSize: 13,
      unselectedFontSize: 13,
      iconSize: 30,
      items: const [
        BottomNavigationBarItem(
          label: "Home",
          icon: Icon(Icons.home_outlined),
        ),
        BottomNavigationBarItem(
          label: "Pesquisar",
          icon: Icon(Icons.search),
        ),
        BottomNavigationBarItem(
            label: "Categorias", icon: Icon(Icons.grid_view)),
        BottomNavigationBarItem(
          label: "Minha conta",
          icon: Icon(Icons.account_circle_outlined),
        ),
      ],
    );
  }
}
