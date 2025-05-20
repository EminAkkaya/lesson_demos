import 'package:flutter/material.dart';

class PageviewWidget extends StatelessWidget {
  final Color pageColor;
  const PageviewWidget({super.key, required this.pageColor});

  @override
  Widget build(BuildContext context) {
    return Container(color: pageColor, child: Center());
  }
}
