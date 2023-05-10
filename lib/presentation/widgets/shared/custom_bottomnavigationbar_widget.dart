import 'package:flutter/material.dart';


class CustomBottomNavigationBarWidget extends StatelessWidget {
  const CustomBottomNavigationBarWidget({ Key? key }) : super( key: key );

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      items: const [
        BottomNavigationBarItem(
          label: 'Inicio',
          icon: Icon(
            Icons.home
          )
        ),
        BottomNavigationBarItem(
          label: 'Categorías',
          icon: Icon(
            Icons.abc
          )
        ),
        BottomNavigationBarItem(
          label: 'Favoritos',
          icon: Icon(
            Icons.favorite_border_outlined
          )
        )
      ],
    );
  }
}