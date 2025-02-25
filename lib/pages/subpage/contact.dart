import 'package:flutter/material.dart' hide Colors;
import 'package:kawach/components/stat_box2.dart';
import 'package:kawach/constant/color.dart';
import 'package:kawach/utils/style.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact us", style: subTitle1()),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 20),
        children: [
          RichText(
            text: TextSpan(
              text: "Get in ",
              style: h6(),
              children: [
                TextSpan(text: "Touch", style: h6(color: Colors.primary)),
              ],
            ),
          ),
          Text("Tell us how can we be better.", style: caption()),
          const SizedBox(height: 20),
          TextFormField(
            autovalidateMode: AutovalidateMode.always,
            validator: (value) {
              return null;
            },
            style: bodyText(),
            decoration: textFieldDecoration(hintText: "Name"),
          ),
          const SizedBox(height: 16),
          TextFormField(
            autovalidateMode: AutovalidateMode.always,
            validator: (value) {
              return null;
            },
            style: bodyText(),
            decoration: textFieldDecoration(hintText: "Email"),
          ),
          const SizedBox(height: 16),
          TextFormField(
            autovalidateMode: AutovalidateMode.always,
            validator: (value) {
              return null;
            },
            style: bodyText(),
            decoration: textFieldDecoration(hintText: "Phone No"),
          ),
          const SizedBox(height: 16),
          TextFormField(
            autovalidateMode: AutovalidateMode.always,
            validator: (value) {
              return null;
            },
            style: bodyText(),
            decoration: textFieldDecoration(hintText: "Message"),
          ),
          const SizedBox(height: 30),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: () {},
              style: primaryButtonStyle(backgroundColor: Colors.primary),
              child: Text("Send", style: buttonText()),
            ),
          ),
          const SizedBox(height: 20),
          StatBox2(
            title: "Phone Number",
            value: "9835594986",
            icon: Icons.call,
            iconColor: Colors.primary,
          ),
          const SizedBox(height: 14),
          StatBox2(
            title: "Email",
            value: "bhattgyanesh@gmail.com",
            icon: Icons.email,
            iconColor: Colors.primary,
          ),
        ],
      ),
    );
  }
}
