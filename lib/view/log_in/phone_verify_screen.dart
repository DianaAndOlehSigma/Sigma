import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sigma/core/ui/states/base_stateless_screen.dart';
import 'package:sigma/resources/text_styles.dart';
import 'package:sigma/services/auth_service.dart';
import 'package:sigma/view/log_in/sms_screen.dart';
import '../../resources/colors.dart';

class PhoneVerifyScreen extends BaseStatelessScreen{
  final TextEditingController phoneNumberController = TextEditingController();


  @override
  Widget buildBody(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
            gradient: backgroundColor
        ),
        child: Padding(
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                              TextFormField(
                                controller: phoneNumberController,
                                style: style_3,
                                decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.phone_outlined, size: 23, color: blue3),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: new BorderSide(color: blue3, width: 1),
                                        borderRadius: BorderRadius.all(Radius.circular(20))
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: new BorderSide(color: blue3, width: 1),
                                        borderRadius: BorderRadius.all(Radius.circular(20))
                                    ),
                                    labelText: 'Номер телефона',
                                    labelStyle: style_3
                                ),
                                keyboardType: TextInputType.phone,
                              ),
                          SizedBox(height: 250,),
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
                                  padding: const EdgeInsets.fromLTRB(109, 11, 109, 11),
                                  child: Text('Далі', style: style_1,),
                                ),
                                onPressed: () {
                                  Get.to(SmsScreen(phoneNumber: phoneNumberController.text,));
                                  AuthService().verifyPhoneNumber(phoneNumberController);
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