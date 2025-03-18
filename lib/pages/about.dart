import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About", style: TextStyle(fontWeight: FontWeight.bold)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "About Kavach",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "Kavach, a cutting-edge product by Navyug, is designed to redefine EV telematics and battery intelligence through real-time data, smart analytics, and seamless connectivity. Whether you're an individual EV owner, fleet operator, or energy provider, Kavach provides advanced monitoring, security, and optimization tools to ensure maximum efficiency and reliability for electric vehicles.",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              "Our Mission",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "At Navyug, we are committed to revolutionizing the EV ecosystem with intelligent telematics solutions that enhance performance, safety, and sustainability. Kavach bridges the gap between vehicles, energy infrastructure, and cloud-based intelligence, empowering users with real-time insights and predictive analytics to drive smarter mobility decisions.",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              "Key Features of Kavach",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "1) Real-Time Tracking – Live GPS updates, route history, and geospatial analytics\n"
              "2) Battery Intelligence – CAN/UART-based monitoring for health, performance, and charging insights\n"
              "3) 4G LTE Connectivity – Secure cloud integration and over-the-air updates",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
