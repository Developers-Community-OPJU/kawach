import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ChargingStationScreen extends StatefulWidget {
  @override
  _ChargingStationScreenState createState() => _ChargingStationScreenState();
}

class _ChargingStationScreenState extends State<ChargingStationScreen> {
  late GoogleMapController mapController;
  final LatLng _initialPosition = const LatLng(13.0827, 80.2707); // Example location

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Google Map
          GoogleMap(
            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(
              target: _initialPosition,
              zoom: 12,
            ),
            markers: {
              const Marker(
                markerId: MarkerId("charging_station"),
                position: LatLng(13.0358, 80.2445), // Example charging station
                infoWindow: InfoWindow(title: "GoEco Charging Station"),
              ),
            },
          ),

          // Header
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back, size: 28),
                    onPressed: () {},
                  ),
                  const Text(
                    "Find Charging Stations",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),

          // Charging Station Info Card
          Positioned(
            bottom: 90,
            left: 20,
            right: 20,
            child: Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 5)],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          "https://source.unsplash.com/100x100/?ev,charging",
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "GoEco Charging Station",
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              "Erkey Charging Station, O.P. Jindal University, Raigarh",
                              style: TextStyle(color: Colors.grey, fontSize: 13),
                            ),
                            Row(
                              children: [
                                const Icon(Icons.location_on, color: Colors.blue, size: 16),
                                const SizedBox(width: 5),
                                const Text("350 m / 5 Min"),
                                const SizedBox(width: 10),
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                  decoration: BoxDecoration(
                                    color: Colors.green[100],
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: const Text(
                                    "Available",
                                    style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("⚡ 15 Kw", style: TextStyle(fontWeight: FontWeight.bold)),
                          Text("Power Capacity", style: TextStyle(color: Colors.grey, fontSize: 12)),
                        ],
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("🔌 7", style: TextStyle(fontWeight: FontWeight.bold)),
                          Text("Charging Ports", style: TextStyle(color: Colors.grey, fontSize: 12)),
                        ],
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("🔋 Level 2", style: TextStyle(fontWeight: FontWeight.bold)),
                          Text("Station Type", style: TextStyle(color: Colors.grey, fontSize: 12)),
                        ],
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        ),
                        onPressed: () {},
                        child: const Text("Start", style: TextStyle(color: Colors.white)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          // Bottom Navigation Bar
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: BottomNavigationBar(
              currentIndex: 1,
              selectedItemColor: Colors.blue,
              unselectedItemColor: Colors.grey,
              showUnselectedLabels: true,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(icon: Icon(Icons.navigation), label: "Nav"),
                BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: "Stats"),
                BottomNavigationBarItem(icon: Icon(Icons.help), label: "Help"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}