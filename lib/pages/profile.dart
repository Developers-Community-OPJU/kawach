import 'package:flutter/material.dart';
import 'package:kawach/pages/about.dart';
import 'package:kawach/pages/charging_station.dart';
import 'package:kawach/pages/edit_profile.dart';
import 'package:kawach/pages/notification.dart';
import 'package:kawach/pages/term.dart';
import 'package:kawach/pages/upload_doc.dart';

class ProfilePage extends StatelessWidget {
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
        title: Text("Profile", style: TextStyle(color: Colors.black)),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.grey[300],
                  child: Icon(Icons.person, color: Colors.white, size: 30),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nishant More",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("xyz@gmail.com", style: TextStyle(color: Colors.grey)),
                  ],
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (c) => EditProfilePage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.edit, color: Colors.white, size: 16),
                      SizedBox(width: 5),
                      Text("Edit", style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                _buildProfileOption(
                  Icons.notifications,
                  "Notifications",
                  onTap:
                      () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (c) => NotificationsScreen(),
                        ),
                      ),
                ),
                _buildProfileOption(
                  Icons.notifications,
                  "Find Charging Station",
                  onTap:
                      () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (c) => ChargingStationScreen(),
                        ),
                      ),
                ),
                _buildProfileOption(
                  Icons.upload_file,
                  "Upload Document",
                  onTap:
                      () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (c) => UploadDocumentScreen(),
                        ),
                      ),
                ),
                _buildProfileOption(
                  Icons.policy,
                  "Terms and policies",
                  onTap:
                      () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (c) => TermsAndPoliciesScreen(),
                        ),
                      ),
                ),
                _buildProfileOption(
                  Icons.info,
                  "About",
                  onTap:
                      () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (c) => AboutScreen()),
                      ),
                ),
                Divider(),
                _buildProfileOption(Icons.logout, "Log out", color: Colors.red),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileOption(
    IconData icon,
    String title, {
    VoidCallback? onTap,
    Color color = Colors.black,
  }) {
    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(title, style: TextStyle(color: color)),
      trailing: Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
      onTap: onTap,
    );
  }
}
