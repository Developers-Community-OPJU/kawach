import 'package:flutter/material.dart' hide Colors;
import 'package:kawach/constant/color.dart';
import 'package:kawach/constant/image.dart';
import 'package:kawach/pages/otp.dart';
import 'package:kawach/provider/authprovider.dart';
import 'package:kawach/utils/style.dart';

class LoginPage extends StatelessWidget {
  final _phoneCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // final authProvider = context.watch<Authprovider>();
    return Scaffold(
      body: Stack(
        children: [
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
                  TextFormField(
                    controller: _phoneCtrl,
                    keyboardType: TextInputType.number,
                    autovalidateMode: AutovalidateMode.always,
                    validator: (value) {
                      if (value!.isEmpty)
                        return "*required";
                      else if (value.length < 10)
                        return "enter valid number";
                      return null;
                    },
                    style: bodyText(),
                    decoration: textFieldDecoration(hintText: "Phone No"),
                  ),
                  // Phone Number Input
                  SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        // authProvider.setSignedInProgress = true;
                        // authProvider.phoneNoVerification(
                        //   context,
                        //   phone: _phoneCtrl.text.trim(),
                        // );
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => OtpPage()),
                        );
                      },
                      style: primaryButtonStyle(
                        backgroundColor: Colors.primary,
                      ),
                      child:
                      // authProvider.getSignedInProgress
                      //     ? CircularProgressIndicator(strokeWidth: 1.5, color: Colors.white)
                      Text("Send OTP", style: buttonText()),
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
