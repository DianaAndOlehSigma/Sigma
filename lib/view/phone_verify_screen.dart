import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sigma/core/ui/states/base_stateless_screen.dart';
import 'package:sigma/services/auth_service.dart';
import '../resources/colors.dart';
import '../resources/text_styles.dart';

class PhoneVerifyScreen extends BaseStatelessScreen{
  final TextEditingController _phoneNumberController = TextEditingController();


  @override
  Widget buildBody(BuildContext context){
    return Container(
      decoration: BoxDecoration(
          gradient: ColorsData().backGroundColor
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
                    style: TextStyles().style_2,
                  ),
                  const SizedBox(height: 49),
                  Center(
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _phoneNumberController,
                          style: TextStyles().style_3,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.phone_outlined, size: 23, color: ColorsData().blue3),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: new BorderSide(color: ColorsData().blue3, width: 1),
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: new BorderSide(color: ColorsData().blue3, width: 1),
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              labelText: 'Номер телефона',
                              labelStyle: TextStyles().style_3
                          ),
                          keyboardType: TextInputType.phone,
                        ),
                        const SizedBox(height: 300,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Нет аккаунта?', style: TextStyles().style_4,),
                            FlatButton(
                              child: Text('Зарегистрироваться', style: TextStyles().style_5,),
                              onPressed: (){},
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RaisedButton(
                              color: ColorsData().white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(134, 11, 134, 11),
                                child: Text('Далі', style: TextStyles().style_1,),
                              ),
                              onPressed: () {
                                Get.toNamed('/smsRoute');
                                AuthService().verifyPhoneNumber(_phoneNumberController);
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