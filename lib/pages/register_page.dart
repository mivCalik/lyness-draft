
import 'package:flutter/material.dart';
import 'package:lylness/components/customTextFormField.dart';
import 'package:lylness/product/styles.dart';
import 'package:lylness/product/tr_items.dart';

import '../components/birtday_input.dart';
import '../components/city_input.dart';
import '../components/if_login_text.dart';
import '../components/register_button.dart';
import '../components/register_text.dart';
import '../components/subtitle_widget.dart';
import '../components/title_widget.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool isVisible = true;
  List<DropdownMenuItem> citySelection = trCities.cityList.map((city)=> DropdownMenuItem(child: Text(city),value: city,)).toList();
  GlobalKey<FormState> _formGlobalKey = GlobalKey<FormState>();

  String _name='';
  String _surname = '';
  String _email = '';
  String _birthdate = '';
  String _city='';
  String _password='';
  String _passwordCheck= '';
  String _repeatPassword = '';
  String _referenceCode = '';
  bool _canClickButton = false; 

  void changeVisible(){
    setState(() {
      isVisible = !isVisible;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Container(
          decoration: LoginRegisterStyle.gradientDecoration,
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
           padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.05, 
              horizontal: MediaQuery.of(context).size.width * 0.15,),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              titleWidget(),
              subtitleWidget(),
                  
              registerText(),
              Form(
                key: _formGlobalKey,
                child: Expanded(
                  child: ListView(
                  children: [
                    Customtextformfield(
                      labelText: RegisterLoginTextsTr.name, 
                      onSaved: (value){_name = value ?? '';},
                      ),
                    Customtextformfield(
                      labelText: RegisterLoginTextsTr.surname, 
                      onSaved: (value){_surname = value ?? '';}
                      ),
                    Customtextformfield(
                      labelText: RegisterLoginTextsTr.email, 
                      onSaved: (value){_email = value ?? '';}
                      ),
                    birtdayInput(
                      onSaved: (value){_birthdate = value ?? '';},
                    ),
                    cityInput(
                      citySelection: citySelection,
                      onSaved: (value){_city = value ?? '';},),
                    Customtextformfield(
                      labelText: RegisterLoginTextsTr.password, 
                      onSaved: (value){_password = value ?? '';},
                      onChanged: (val) {
                        _passwordCheck = val ?? '';
                      },
                      ),
                    Customtextformfield(
                      onChanged: (val) {
                        _canClickButton = _formGlobalKey.currentState!.validate();
                      },
                      labelText: RegisterLoginTextsTr.repeatPassword, 
                      onSaved:(value){_repeatPassword = value ?? '';}, 
                      isDone: true,
                      compareString: _passwordCheck,
                      ),
                    registerButton(onPressed: (){
                      // if inputs are validated then dialog opens
                      print('_formGlobalKey.currentState!.validate(): ${_formGlobalKey.currentState!.validate()}');
                      if(_canClickButton){
                        showDialog(context: context, builder: (context) {
                        return askCodeDialog( 
                          globalKey: _formGlobalKey,
                          onSaved: (value){
                            _referenceCode = value?? '';
                          // TO DO: send variables to api 
                          // and delete the prints
                          },
                          );
                      },);
                      }    
                      
                    },),
                    
                    
                  ],
                                ),
                )),
                const ifLoginText(),
            ],
          ),
        ),),
    );
  }
    
}
