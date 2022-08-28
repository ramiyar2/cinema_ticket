import 'package:cinema_ticket/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: SafeArea(
        child: Container(
          color: MyColors().darkerBlue,
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset('assets/img/logo_op.png'),
                  Text('Cinema Ticket')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
