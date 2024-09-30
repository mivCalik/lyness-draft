import 'package:flutter/material.dart';
import 'package:lylness/product/tr_items.dart';

class Customtextformfield extends StatefulWidget {
  final bool isPassword;
  final bool initialVisible;
  final bool isDone;
  final String labelText;
  String compareString ;
  
  final Function(String?) onSaved;
  Function(String?)? onChanged;
  Customtextformfield({super.key, 
    required this.labelText, 
    required this.onSaved, 
    this.isPassword = false, 
    this.initialVisible = false,
    this.isDone = false, 
    this.compareString = '',
    this.onChanged,
    });

  @override
  State<Customtextformfield> createState() => _CustomtextformfieldState();
}

class _CustomtextformfieldState extends State<Customtextformfield> {
  late bool isVisible;
  late String? _compareText;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isVisible= widget.initialVisible;
    _compareText = widget.compareString == '' ? null: widget.compareString ;
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: TextFormField(
        onChanged: widget.onChanged,
        validator: _customTextFormFieldValidator,
        obscureText: widget.isPassword ? !isVisible: false,
        onSaved: widget.onSaved,
        style: TextStyle(color: Colors.white),
        textInputAction: widget.isDone? TextInputAction.done :  TextInputAction.next,
        decoration: InputDecoration(
          suffixIcon: widget.isPassword ? IconButton(onPressed: () {
            setState(() {isVisible = !isVisible;});
          }, icon: isVisible? Icon(Icons.visibility) : Icon(Icons.visibility_off))
          : SizedBox.shrink(),

          labelText: widget.labelText,
        ),
      ),
    );
  }

  String? _customTextFormFieldValidator(value) {
        _compareText = widget.compareString== null ? '': widget.compareString;
        if(value == null || value.isEmpty){
          return 'Lütfen boş bırakmayınız';
        }else if( _compareText == '' ? false: value !=_compareText ){
          return 'Girdiğiniz şifre yukarıdaki şifre ile aynı olmalıdır.';
        }
        return null;
      }
}