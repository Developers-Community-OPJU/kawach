import 'package:flutter/material.dart' hide Colors;
import 'package:kawach/components/otp_input.dart';
import 'package:kawach/constant/color.dart';
import 'package:kawach/constant/image.dart';
import 'package:kawach/pages/navigation.dart';
import 'package:kawach/utils/style.dart';

class OtpPage extends StatelessWidget {
  final TextEditingController _field1 = TextEditingController();
  final TextEditingController _field2 = TextEditingController();
  final TextEditingController _field3 = TextEditingController();
  final TextEditingController _field4 = TextEditingController();
  final TextEditingController _field5 = TextEditingController();
  final TextEditingController _field6 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              backGround, // Replace with your background image URL
              fit: BoxFit.cover,
            ),
          ),
          // Bottom Card UI
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sign In",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Powering the next generation of electric vehicles.\nEnter your phone number to get started.",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 14, color: Colors.gray),
                  ),
                  SizedBox(height: 20),
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
                  SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NavigationPage(),
                          ),
                        );
                      },
                      style: primaryButtonStyle(
                        backgroundColor: Colors.primary,
                      ),
                      child: Text("Verify", style: buttonText()),
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
