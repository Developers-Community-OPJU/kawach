import 'dart:async';
import 'package:flutter/material.dart' hide Colors;
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:kawach/constant/color.dart';
import 'package:kawach/constant/image.dart';
import 'package:kawach/utils/size.dart';
import 'package:kawach/utils/style.dart';

class NavPage extends StatefulWidget {
  const NavPage({super.key});

  @override
  State<NavPage> createState() => _NavPageState();
}

class _NavPageState extends State<NavPage> {
  bool hide = true;
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static const CameraPosition _kLake = CameraPosition(
    bearing: 192.8334901395799,
    target: LatLng(37.43296265331129, -122.08832357078792),
    tilt: 59.440717697143555,
    zoom: 19.151926040649414,
  );
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GoogleMap(
          mapType: MapType.hybrid,
          initialCameraPosition: _kGooglePlex,
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
        ),
        if (hide)
          Positioned(
            left: 16.0,
            right: 16.0,
            bottom: 10.0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 14, vertical: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Image.asset(
                          ebike,
                          height: deviceHeight(context) * 0.2,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        flex: 6,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "80% Battery",
                              style: bodyText(fontWeight: FontWeight.w600),
                            ),
                            Text("You have 36 Km available", style: caption()),
                            const SizedBox(height: 5),
                            info(
                              Icons.eco,
                              Colors.green,
                              "Eco 11 Km available",
                            ),
                            info(
                              Icons.sports,
                              Colors.info,
                              "Sports 8 Km available",
                            ),
                            info(
                              Icons.sports,
                              Colors.red,
                              "Normal 8 Km available",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    width: double.infinity,
                    height: 45,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          hide = !hide;
                        });
                      },
                      style: primaryButtonStyle(
                        backgroundColor: Colors.primary,
                      ),
                      child: Text("Plan your Trip", style: buttonText()),
                    ),
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }

  Widget info(IconData icon, Color iconColor, String title) => Row(
    children: [
      Icon(icon, color: iconColor, size: 20),
      const SizedBox(width: 5),
      Text(title, style: caption(color: Colors.black)),
    ],
  );
}
