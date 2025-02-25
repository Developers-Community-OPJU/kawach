import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart' hide Colors;
import 'package:kawach/constant/color.dart';
import 'package:kawach/constant/image.dart';
import 'package:kawach/pages/otp.dart';
import 'package:kawach/utils/size.dart';
import 'package:kawach/utils/style.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: deviceHeight(context) * 0.25),
            Image.asset(logo, width: deviceWidth(context) * 0.3),
            const SizedBox(height: 10),
            Text(
              "Let's sign you in",
              style: subTitle1(fontWaight: FontWeight.w700),
            ),
            const SizedBox(height: 5),
            RichText(
              text: TextSpan(
                text: "You are welcome back. You don’t have an\naccount?",
                style: bodyText(color: Colors.textLabel),
                children: [
                  TextSpan(
                    recognizer: TapGestureRecognizer()..onTap = () {},
                    text: " Sign up here",
                    style: bodyText(color: Colors.primary),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            TextFormField(
              autovalidateMode: AutovalidateMode.always,
              validator: (value) {
                return null;
              },
              style: bodyText(),
              decoration: textFieldDecoration(hintText: "Phone No"),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OtpPage()),
                  );
                },
                style: primaryButtonStyle(backgroundColor: Colors.primary),
                child: Text("Send OTP", style: buttonText()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
