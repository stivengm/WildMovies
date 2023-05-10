import 'package:flutter/material.dart';

class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget({ Key? key }) : super( key: key );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: SizedBox(
          width: double.infinity,
          child: Row(
            children: const [
              Text("WildMovies"),
              Spacer(),
              Icon(
                Icons.search
              )
            ],
          ),
        ),
      ),
    );
  }
}