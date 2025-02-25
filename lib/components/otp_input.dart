import 'package:flutter/material.dart' hide Colors;
import 'package:flutter/services.dart';
import 'package:kawach/constant/color.dart';
import 'package:kawach/utils/style.dart';

class OtpInput extends StatelessWidget {
  final TextEditingController controller;
  final bool autofocus;
  const OtpInput(this.controller, this.autofocus, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      child: TextField(
        maxLines: 1,
        autofocus: autofocus,
        controller: controller,
        textAlign: TextAlign.center,
        maxLength: 1,
        style: subTitle1(),
        textInputAction: TextInputAction.next,
        keyboardType: TextInputType.number,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        onChanged: (value) {
          if (value.length == 1) FocusScope.of(context).nextFocus();
        },
        decoration: InputDecoration(
          counterText: "",
          isDense: true,
          fillColor: Colors.textFieldBG,
          filled: true,
          contentPadding: const EdgeInsets.only(
            left: 10,
            right: 10,
            top: 10,
            bottom: 10,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.primary),
            borderRadius: BorderRadius.circular(7),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 0.5, color: Colors.textFieldBG),
            borderRadius: BorderRadius.circular(7),
          ),
        ),
      ),
    );
  }
}
