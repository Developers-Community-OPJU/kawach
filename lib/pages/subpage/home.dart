import 'package:flutter/material.dart' hide Colors;
import 'package:kawach/components/circuler_image.dart';
import 'package:kawach/components/stat_box.dart';
import 'package:kawach/components/stat_box2.dart';
import 'package:kawach/constant/color.dart';
import 'package:kawach/constant/image.dart';
import 'package:kawach/pages/profile.dart';
import 'package:kawach/utils/size.dart';
import 'package:kawach/utils/style.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.transparent, Colors.Bg.withValues(alpha: 0.3)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          children: [
            Column(
              children: [
                SizedBox(height: statusBarHeight(context)),

                SizedBox(height: 10),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (c) => ProfilePage()),
                        );
                      },
                      child: CirculerImage(size: 45),
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Naivedya", style: subTitle2()),
                        Text("7735837675", style: caption()),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return const LinearGradient(
                      colors: [
                        Color(0xFF51C5FE), // A bright blue
                        Color(0xFFC6EFFF), // A lighter, more transparent blue
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ).createShader(bounds);
                  },
                  child: Text(
                    'Kawach',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Image.asset(ebike, width: deviceWidth(context) * 0.7),
                Divider(color: Colors.textLabel.withValues(alpha: 0.6)),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("31%", style: subTitle1(fontWaight: FontWeight.w700)),
                    Image.asset(batteryRange, height: 24, width: 24),
                    SizedBox(width: 14),
                    Text(
                      "22 Km",
                      style: subTitle1(fontWaight: FontWeight.w700),
                    ),
                    Text(" Range", style: bodyText()),
                  ],
                ),
                const SizedBox(height: 10),
                RichText(
                  text: TextSpan(
                    text: "Speed",
                    style: bodyText(),
                    children: [
                      TextSpan(
                        text: " 35 Kmph",
                        style: subTitle1(fontWaight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: StatBox(
                        title: "Run Time",
                        value: "38",
                        ext: "min",
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: StatBox(
                        title: "Today's Run",
                        value: "5",
                        ext: "KM",
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                RichText(
                  text: TextSpan(
                    text: "Total Run",
                    style: bodyText(),
                    children: [
                      TextSpan(
                        text: " 3001 KM",
                        style: subTitle1(fontWaight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: StatBox2(
                        title: "Eco",
                        value: "86 km",
                        icon: Icons.eco,
                        iconColor: Colors.green,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: StatBox2(
                        title: "Sports",
                        value: "110 km",
                        icon: Icons.sports,
                        iconColor: Colors.info,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: StatBox2(
                        title: "Hyper",
                        value: "86 km",
                        icon: Icons.sports,
                        iconColor: Colors.red,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
