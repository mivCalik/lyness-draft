import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lylness/pages/register_page.dart';

import '../product/tr_items.dart';

class birtdayInput extends StatefulWidget {
  final Function(String?) onSaved ;
  const birtdayInput({
    super.key,
    required this.onSaved,
  });

  @override
  State<birtdayInput> createState() => _birtdayInputState();
}

class _birtdayInputState extends State<birtdayInput> {
  final _dateController = TextEditingController(text: 'dd/aa/yyyy');

  @override
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      
      child: TextFormField(
        validator: (value) {
          if(value ==null || value.isEmpty){
            return 'Lütfen geçerli tarih giriniz';
          }
          return null;
        },
        onSaved: widget.onSaved,
        controller: _dateController,
        keyboardType: TextInputType.number,
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp(r'\d')),// only numbers check
          DateTextInputFormatter()
        ],
        style: TextStyle(color: Colors.white),
        textInputAction: TextInputAction.go,
        decoration: InputDecoration(
          labelText: RegisterLoginTextsTr.birthday,
          hintText: 'dd/aa/yyyy'
        ),
      ),
    );
  }
}


class DateTextInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final text = newValue.text;

    if (text.length > 8) {
      return oldValue;
    }

    String formattedText = text;

    if (text.length >= 3) {
      formattedText = text.substring(0,2) + '/' + text.substring(2);
    }
    if(text.length>= 5){
      formattedText = text.substring(0,2) + '/'+ text.substring(2,4) + '/' + text.substring(4);
    }
  
    return TextEditingValue(
      text: formattedText,
      selection: TextSelection.collapsed(offset: formattedText.length),
    );
  }
}

