import 'package:flutter/material.dart';
import 'package:lylness/product/tr_items.dart';

class forgotPasswordText extends StatelessWidget {
  const forgotPasswordText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: SizedBox(
        width: double.infinity,
        child: Text(RegisterLoginTextsTr.forgotPassword,
            textAlign: TextAlign.end,
            style: TextStyle(
              color: Colors.white,
              fontSize: 11,
              fontWeight: FontWeight.w700,
            ),
          ),
      ),
    );
  }
}
