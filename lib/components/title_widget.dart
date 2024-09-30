import 'package:flutter/material.dart';
import 'package:lylness/product/styles.dart';
import 'package:lylness/product/tr_items.dart';

class titleWidget extends StatelessWidget {
  const titleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(RegisterLoginTextsTr.title,
      textAlign: TextAlign.center,
      style: LoginRegisterStyle.titleFont.copyWith(
        color: Colors.white,
        fontSize: 48,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
