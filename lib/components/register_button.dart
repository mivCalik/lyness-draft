import 'package:flutter/material.dart';
import 'package:lylness/product/styles.dart';
import 'package:lylness/product/tr_items.dart';

class registerButton extends StatefulWidget {
  final Function onPressed ;
  const registerButton({super.key, required this.onPressed});

  @override
  State<registerButton> createState() => _registerButtonState();
}

class _registerButtonState extends State<registerButton> {
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: TextButton(
        onPressed: ()=>widget.onPressed() ,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
          child: Text(
            RegisterLoginTextsTr.register,
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



class askCodeDialog extends StatefulWidget {
  final Function(String?) onSaved;
  final GlobalKey<FormState> globalKey;
  const askCodeDialog({
    super.key, 
    required this.onSaved,
    required this.globalKey
  });

  @override
  State<askCodeDialog> createState() => _askCodeDialogState();
}

class _askCodeDialogState extends State<askCodeDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shadowColor: LoginRegisterStyle.dialogShadow,
      backgroundColor: LoginRegisterStyle.dialogBackground,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 40),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(RegisterLoginTextsTr.codeQuestion, style: LoginRegisterStyle.dialogTextStyle),
            Padding(padding: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _dialogButton(text: RegisterLoginTextsTr.yes, onPressButton: (){
                    Navigator.pop(context);                          
                    showDialog(context: context, builder: (context) {
                      return enterCodeDialog(
                        onSaved: widget.onSaved,
                        globalKey: widget.globalKey,
                      );
                    },);
                  },),
                  SizedBox(width: 20,),
                  _dialogButton(
                    text: RegisterLoginTextsTr.no, 
                    onPressButton: (){
                      // Implement register function with 
                      // empty referance code
                      if(widget.globalKey.currentState!.validate()){
                        widget.globalKey.currentState!.save();
                      }
                      print('!!!!!!!!!!!!!!!!!!!!!!!!!');
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('')));
                      Navigator.pop(context);
                      },
                    ),
    
                ],
              ),
            )
          ],
        ),
        ),
        
    );
  }
}


class enterCodeDialog extends StatefulWidget {
  final Function(String?) onSaved;
  final GlobalKey<FormState> globalKey;
  const enterCodeDialog({
    super.key, 
    required this.onSaved, 
    required this.globalKey,
  });

  @override
  State<enterCodeDialog> createState() => _enterCodeDialogState();
}

class _enterCodeDialogState extends State<enterCodeDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shadowColor: LoginRegisterStyle.dialogShadow,
      backgroundColor: LoginRegisterStyle.dialogBackground,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 40),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(RegisterLoginTextsTr.codeQuestion, style: LoginRegisterStyle.dialogTextStyle),
            Padding(
              
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: TextFormField(
                onSaved: widget.onSaved,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  labelStyle: TextStyle(color: Colors.black54, backgroundColor: Colors.white,),
                  labelText: RegisterLoginTextsTr.refCode,
                ),
              ),
            ),
            registerButton(onPressed: (){
              print('');
              if(widget.globalKey.currentState!.validate()){
                widget.globalKey.currentState!.save();
              }
              Navigator.pop(context);    
            }),
          ],
        ),
        ),
        
    );
  }
}

class _dialogButton extends StatelessWidget {
  final String text;
  final Function onPressButton;
  const _dialogButton({
    super.key, required this.text, required this.onPressButton
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(onPressed: ()=> onPressButton(),      
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          backgroundColor: Colors.white,
        ), 
        child: Text(text,style: LoginRegisterStyle.dialogTextStyle,),
      ),
    );
  }
}


