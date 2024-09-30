import 'package:flutter/material.dart';
import 'package:lylness/product/tr_items.dart';

class registerText extends StatelessWidget {
  const registerText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top:40, bottom: 20),
      child: Text(RegisterLoginTextsTr.register,
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
    );
  }
}
