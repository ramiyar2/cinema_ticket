import 'package:flutter/material.dart';
import '../theme/colors.dart';
import '../theme/icons.dart';
import '../theme/theme.dart';

class CustomTextField extends StatelessWidget {
  final bool isPassward;
  final String hint;
  final String icon;
  const CustomTextField(
      {required this.isPassward,
      required this.hint,
      required this.icon,
      Key? key})
      : super(key: key);

  @override
  Widget build(context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Image.asset(
                  icon,
                  width: 25,
                  height: 25,
                  color: white,
                )),
          ],
        ),
        suffixIcon: isPassward
            ? Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  GestureDetector(
                    child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Image.asset(
                          closedEye,
                          width: 25,
                          height: 25,
                          color: white,
                        )),
                  ),
                ],
              )
            : null,
        hintStyle: Themes().subTitleStyleOPSmall,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: blue,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: blue,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
      ),
    );
  }
}
