import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: SafeArea(
        child: Container(
          color: Theme.of(context).backgroundColor,
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
