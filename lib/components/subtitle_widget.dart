import 'package:flutter/material.dart';
import 'package:lylness/product/tr_items.dart';

class subtitleWidget extends StatelessWidget {
  const subtitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(RegisterLoginTextsTr.subtitle,
      style: TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
