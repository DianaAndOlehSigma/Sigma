import 'package:flutter/material.dart';
import 'package:flutter_pin_code_fields/flutter_pin_code_fields.dart';
import 'package:sigma/core/ui/states/base_stateless_screen.dart';
import 'package:sigma/services/auth_service.dart';
import 'package:sigma/services/user_service.dart';
import '../../resources/colors.dart';
import '../../resources/text_styles.dart';

class SmsScreen extends BaseStatelessScreen{
  SmsScreen({
    @required this.phoneNumber
  });


  final TextEditingController _smsController = TextEditingController();
  final String phoneNumber;



  @override
  Widget buildBody(BuildContext context){
    return Container(
      decoration: BoxDecoration(
          gradient: backgroundColor
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 77,),
              Text(
                'Войти  в аккаунт',
                style: style_2,
              ),
              const SizedBox(height: 49),
              Center(
                child: Column(
                  children: [
                    PinCodeFields(
                      controller: _smsController,
                      length: 6,
                      fieldBorderStyle: FieldBorderStyle.Square,
                      responsive: false,
                      fieldHeight:45.0,
                      fieldWidth: 30.0,
                      borderWidth:1.0,
                      activeBackgroundColor: blue,
                      borderRadius: BorderRadius.circular(10.0),
                      keyboardType: TextInputType.number,
                      autoHideKeyboard: false,
                      fieldBackgroundColor: Colors.black12,
                      borderColor: blue3,
                      textStyle: style_6
                    ),
                    const SizedBox(height: 15),
                    Text('SMS-соощение отправлено на' + '\n${phoneNumber}' + '\n${'Введите код из SMS'}',
                      style: style_7, textAlign: TextAlign.center,),
                    const SizedBox(height: 120,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Нет аккаунта?', style: style_4,),
                        FlatButton(
                          child: Text('Зарегистрироваться', style: style_5,),
                          onPressed: (){},
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 25),
                      child: RaisedButton(
                          color: white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(115, 11, 115, 11),
                            child: Text('Далі', style: style_1,),
                          ),
                          onPressed: () async {
                            await UserService().getUser(phoneNumber);
                            AuthService().signInWithPhoneNumber(_smsController);
                          }
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}