import 'package:flutter/material.dart';

class avatarW extends StatelessWidget {
  final String img;
  const avatarW({
    super.key,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      color: Colors.white,
      child: Image.asset(img),
    );
  }
}
