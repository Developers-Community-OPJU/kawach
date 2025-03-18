import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  final List<Map<String, String>> notifications = [
    {
      "title": "Battery Health Tip",
      "message":
          "Your battery health is optimal! Keep charging between 20%-80%.",
      "days": "Today",
      "badge": "1",
    },
    {
      "title": "Traffic Alert",
      "message":
          "Heavy traffic detected on your usual route. Consider an alternate path.",
      "days": "3 d ago",
      "badge": "2",
    },
    {
      "title": "Energy Consumption Report",
      "message": "Your weekly energy consumption is 50 kWh.",
      "days": "7 d ago",
      "badge": "1",
    },
    {
      "title": "Battery Health Alert",
      "message":
          "Your battery temperature is too high! Consider parking in a shaded area.",
      "days": "3 w ago",
    },
    {
      "title": "Charging Complete",
      "message": "Your EV is fully charged! Unplug now to avoid high costs.",
      "days": "1 m ago",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("Notifications", style: TextStyle(color: Colors.black)),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(10),
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          var notification = notifications[index];
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            child: ListTile(
              leading: Icon(Icons.notifications, color: Colors.black54),
              title: Text(
                notification["title"]!,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(notification["message"]!),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (notification.containsKey("badge"))
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.red,
                      child: Text(
                        notification["badge"]!,
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  SizedBox(height: 5),
                  Text(
                    notification["days"]!,
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
