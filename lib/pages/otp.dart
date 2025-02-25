import 'package:flutter/material.dart' hide Colors;
import 'package:kawach/components/otp_input.dart';
import 'package:kawach/constant/color.dart';
import 'package:kawach/constant/image.dart';
import 'package:kawach/pages/navigation.dart';
import 'package:kawach/utils/size.dart';
import 'package:kawach/utils/style.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({super.key});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  final TextEditingController _field1 = TextEditingController();
  final TextEditingController _field2 = TextEditingController();
  final TextEditingController _field3 = TextEditingController();
  final TextEditingController _field4 = TextEditingController();
  final TextEditingController _field5 = TextEditingController();
  final TextEditingController _field6 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: deviceHeight(context) * 0.25),
            Image.asset(logo, width: deviceWidth(context) * 0.3),
            const SizedBox(height: 10),
            Text(
              "Verify your OTP",
              style: subTitle1(fontWaight: FontWeight.w700),
            ),
            const SizedBox(height: 5),
            Text(
              "Enter otp you received in register mobile number",
              style: bodyText(color: Colors.textLabel),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OtpInput(_field1, true),
                OtpInput(_field2, true),
                OtpInput(_field3, true),
                OtpInput(_field4, true),
                OtpInput(_field5, true),
                OtpInput(_field6, true),
              ],
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NavigationPage()),
                  );
                },
                style: primaryButtonStyle(backgroundColor: Colors.primary),
                child: Text("Verify", style: buttonText()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
