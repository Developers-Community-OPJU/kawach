import 'dart:async';

import 'package:flutter/material.dart' hide Colors;
import 'package:kawach/constant/color.dart';
import 'package:kawach/constant/image.dart';
import 'package:kawach/pages/login.dart';
import 'package:kawach/utils/size.dart';
import 'package:kawach/utils/style.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(logo, width: deviceWidth(context) * 0.4),
            const SizedBox(height: 10),
            Text("Kawach", style: h6()),
          ],
        ),
      ),
    );
  }
}
