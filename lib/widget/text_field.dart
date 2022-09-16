import 'package:flutter/material.dart';
import '../theme/colors.dart';
import '../theme/icons.dart';
import '../theme/theme.dart';

class CustomTextField extends StatefulWidget {
  final bool isPassward;
  final String hint;
  final String icon;
  final TextEditingController textEditingController;
  const CustomTextField(
      {required this.isPassward,
      required this.hint,
      required this.icon,
      Key? key,
      required this.textEditingController})
      : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isVisiblePass = false;

  @override
  Widget build(context) {
    return TextField(
      obscureText: widget.isPassward
          ? isVisiblePass
              ? false
              : true
          : false,
      decoration: InputDecoration(
        hintText: widget.hint,
        prefixIcon: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Image.asset(
                  widget.icon,
                  width: 25,
                  height: 25,
                  color: white,
                )),
          ],
        ),
        suffixIcon: widget.isPassward
            ? Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isVisiblePass = !isVisiblePass;
                      });
                    },
                    child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Image.asset(
                          isVisiblePass ? eye : closedEye,
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
