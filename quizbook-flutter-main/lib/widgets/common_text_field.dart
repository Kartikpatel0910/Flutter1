import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rudra_it_hub/utils/constants.dart';
import 'package:rudra_it_hub/utils/utility.dart';

class CommonTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final String prefixIcon;
  final bool textInputAction;
  final String suffixIcon;
  final String label;
  final String errorMessage;
  final TextInputType inputType;
  final int length;
  final bool isDropDown;
  final bool isReadOnly;
  final VoidCallback onTap;
  final bool isEmailField;
  final bool initialValue;
  final bool autoFocus;
  final bool isOTPField;

  final List<TextInputFormatter> formatter;
  final bool isMobileNumber;

  const CommonTextFormField({
    super.key,
    required this.controller,
    required this.errorMessage,
    required this.onTap,
    required this.label,
    required this.inputType,
    required this.formatter,
    this.length = 500,
    this.isDropDown = false,
    this.hint = '',
    this.prefixIcon = '',
    this.suffixIcon = '',
    this.textInputAction = true,
    this.isMobileNumber = false,
    this.isEmailField = false,
    this.isReadOnly = false,
    this.initialValue = false,
    this.autoFocus = false,
    this.isOTPField = false,
  });

  final TextStyle labelStyle = const TextStyle(
    fontSize: 15,
    color: greyColor,
    fontWeight: FontWeight.w500,
  );
  final TextStyle hintStyle = const TextStyle(
    fontSize: 14,
    color: greyColor,
    fontWeight: FontWeight.w500,
  );

  final TextStyle mobileNumberStyle = const TextStyle(
    fontSize: 15,
    color: blackColor,
    fontWeight: FontWeight.w500,
  );

  final InputBorder border = const UnderlineInputBorder(
      borderSide: BorderSide(color: greyColor, width: 0.0));

  final InputBorder focusBorder = const UnderlineInputBorder(
      borderSide: BorderSide(color: purpleColor, width: 0.0));

  final InputBorder errorBorder = const UnderlineInputBorder(
      borderSide: BorderSide(color: redColor, width: 0.0));

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (value) {},
      style: const TextStyle(
          color: Colors.black, fontSize: 15.1, fontWeight: FontWeight.w500),
      autofocus: autoFocus,
      onTap: onTap,
      readOnly: isReadOnly,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      // style: mobileNumberStyle,
      keyboardType: inputType,
      inputFormatters: formatter,
      textInputAction: TextInputAction.next,
      controller: controller,
      decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          counterText: '',
          isDense: false,
          hintText: hint,
          hintStyle: hintStyle,
          label: Text(
            label,
          ),
          labelStyle: labelStyle,
          errorBorder: errorBorder,
          focusedBorder: focusBorder,
          border: border,
          disabledBorder: border,
          focusedErrorBorder: errorBorder,
          enabledBorder: border,
          prefix:
           isMobileNumber
              ? Text('+91', style: mobileNumberStyle)
              : const SizedBox.shrink(),
          suffix: isDropDown
              ? Image.asset(
                  suffixIcon,
                  width: 10,
                  height: 10,
                )
              : const SizedBox.shrink()),
      validator: (newVal) {
        if (isMobileNumber) {
          if (newVal!.isEmpty || newVal.length < 10) {
            return errorMessage;
          }
        } else if (isEmailField) {
          if (newVal!.isEmpty || !Utility.isEmailValid(newVal)) {
            return errorMessage;
          } else {}
        } else if (isOTPField) {
          if (newVal!.isEmpty || newVal.length < 6) {
            return errorMessage;
          } else {}
        } else {
          if (newVal!.isEmpty) {
            return errorMessage;
          }
        }

        return null;
      },
    );
  }
}
