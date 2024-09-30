import 'package:flutter/material.dart';
import 'package:lylness/product/tr_items.dart';

class loginButton extends StatelessWidget {
  const loginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: TextButton(
        onPressed: (){} ,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
          child: Text(
            RegisterLoginTextsTr.login,
            style: TextStyle(
              fontSize: 16,
              color: Color(0xFF0653A0),
              fontWeight: FontWeight.w700,
            ),
            ),
        ),
        style: TextButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
      
        )
      ),
    );
  }
}
