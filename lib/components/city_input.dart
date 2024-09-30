import 'package:flutter/material.dart';
import 'package:lylness/product/tr_items.dart';

class cityInput extends StatefulWidget {
  final Function(dynamic?) onSaved;
  const cityInput({
    super.key,
    required this.citySelection, 
    required this.onSaved,
  });

  final List<DropdownMenuItem> citySelection;

  @override
  State<cityInput> createState() => _cityInputState();
}

class _cityInputState extends State<cityInput> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.black45,
        ),
        child: DropdownButtonFormField(
          validator: (value) {
            if(value == null ||value.isEmpty){
              return 'Lütfen şehir seçiniz';
            }
            return null;
          },
          onSaved: widget.onSaved,
          decoration: InputDecoration(
            labelText: RegisterLoginTextsTr.city,
          ),
          items: widget.citySelection,
          style: TextStyle(
            color: Colors.white,
            ),
          onChanged: (value) {
            
          },
          ),
      )
    );
  }
}
