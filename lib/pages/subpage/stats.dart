import 'package:flutter/material.dart' hide Colors;
import 'package:kawach/components/stat_box2.dart';
import 'package:kawach/constant/color.dart';
import 'package:kawach/utils/style.dart';
import 'package:step_tracker/step_tracker.dart';

class StatsPage extends StatefulWidget {
  const StatsPage({super.key});

  @override
  State<StatsPage> createState() => _StatsPageState();
}

class _StatsPageState extends State<StatsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Ride Detail", style: subTitle1()),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 16, right: 16, bottom: 20),
        children: [
          Text("Last Record", style: subTitle2()),
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 10),
            child: StepTracker(
              dotSize: 10,
              selectedColor: Colors.green,
              unSelectedColor: Colors.red,
              stepTrackerType: StepTrackerType.dotVertical,
              pipeSize: 30,
              steps: [
                Steps(
                  title: Text("3:37 PM, 2nd January"),
                  description:
                      "Jeevan Vihar, A-8, Raipur, Chhattisgarh 492001.",
                  state: TrackerState.complete,
                ),
                Steps(
                  title: Text("7:03 AM, 5th January"),
                  description:
                      "Sector-19, Atal Nagar,Raipur, Chhattisgarh 492002.",
                  state: TrackerState.complete,
                ),
                Steps(
                  title: Text("8:27 PM, 18th January"),
                  description:
                      "Baloda Bazar Road, P.O. Vidhan Sabha, Raipur – 492005.",
                  state: TrackerState.complete,
                ),
                Steps(
                  title: Text("1:08 PM, 29th January"),
                  description:
                      "Mahila Police Thana, Gandhi Udyan, Raipur (C.G.).",
                  state: TrackerState.complete,
                ),
                Steps(
                  title: Text("6:42 PM, 5th February"),
                  description:
                      "Govt School Bhatagaon, Raipur, Chhattisgarh 492013.",
                  state: TrackerState.complete,
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Text("Last Ride", style: subTitle2()),
          const SizedBox(height: 14),
          Row(
            children: [
              Expanded(child: StatBox2(title: "Distance", value: "200 km", icon: Icons.pedal_bike)),
              const SizedBox(width: 10),
              Expanded(child: StatBox2(title: "Ride Time", value: "32 hr", icon: Icons.watch)),
              const SizedBox(width: 10),
              Expanded(child: StatBox2(title: "Battery", value: "65%", icon: Icons.battery_5_bar)),
            ],
          ),
          const SizedBox(height: 20),
          Text("Overall Ride", style: subTitle2()),
          const SizedBox(height: 14),
          Row(
            children: [
              Expanded(child: StatBox2(title: "Distance", value: "200 km", icon: Icons.pedal_bike)),
              const SizedBox(width: 10),
              Expanded(child: StatBox2(title: "Avg. Speed", value: "32 km/hr", icon: Icons.pedal_bike)),
              const SizedBox(width: 10),
              Expanded(child: StatBox2(title: "CO2 Saved", value: "13 kg", icon: Icons.eco)),
            ],
          ),
        ],
      ),
    );
  }
}
