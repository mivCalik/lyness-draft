import 'package:flutter/material.dart';
import 'package:lylness/product/tr_items.dart';

class ifNotLoginText extends StatelessWidget {
  const ifNotLoginText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Text(
        RegisterLoginTextsTr.ifNotLogin,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w700,
          fontSize: 11,
          
      
        ),
      ),
    );
  }
}