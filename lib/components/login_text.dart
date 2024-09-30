import 'package:flutter/material.dart';
import 'package:lylness/product/tr_items.dart';

class loginText extends StatelessWidget {
  const loginText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: Text(RegisterLoginTextsTr.login,
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
    );
  }
}
