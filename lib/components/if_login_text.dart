import 'package:flutter/material.dart';
import 'package:lylness/product/tr_items.dart';

class ifLoginText extends StatelessWidget {
  const ifLoginText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Text(
        RegisterLoginTextsTr.ifLogin,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w700,
          fontSize: 11,
          
      
        ),
      ),
    );
  }
}
