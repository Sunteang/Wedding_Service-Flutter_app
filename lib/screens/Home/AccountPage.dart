//lib/screens/Home/AccountPage.dart

import 'package:flutter/material.dart';
import 'package:wedding_service_app/pages/profile/ProfilePage.dart';
import 'package:wedding_service_app/pages/setting/SettingPage.dart';

class WeddingAccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(20.0),
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF42A5F5), Color(0xFF1565C0)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            children: const [
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage(
                    'https://i.pinimg.com/736x/65/78/64/657864774184d29c4c3606640b3ec3fa.jpg'),
              ),
              SizedBox(height: 10),
              Text(
                "Teang TheWeak",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(height: 5),
              Text(
                "teangtheweak@example.com",
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView(
            padding: const EdgeInsets.all(16.0),
            children: [
              _buildAccountOption(
                context,
                title: 'Profile',
                icon: Icons.person,
                iconColor: Color(0xFF1565C0),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfilePage()));
                },
              ),
              _buildAccountOption(
                context,
                title: 'Settings',
                icon: Icons.settings,
                iconColor: Color(0xFF1565C0),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SettingPage()));
                },
              ),
              // _buildAccountOption(Icons.person, "Profile", onTap: () {
              _buildAccountOption(
                context,
                title: 'Help Center',
                icon: Icons.help_outline,
                iconColor: Color(0xFF1565C0),
                onTap: () {
                  // Add navigation to Privacy Settings here
                },
              ),
              _buildAccountOption(
                context,
                title: 'Log Out',
                icon: Icons.logout,
                iconColor: Color(0xFF1565C0),
                onTap: () {
                  // Add navigation to Privacy Settings here
                },
              ),
              // _buildAccountOption(Icons.person, "Profile"),
              // _buildAccountOption(Icons.settings, "Settings"),
              // _buildAccountOption(Icons.help_outline, "Help Center"),
              // _buildAccountOption(Icons.logout, "Log Out"),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildAccountOption(BuildContext context,
      {required String title,
      required IconData icon,
      required Color iconColor,
      required VoidCallback onTap}) {
    return Card(
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(fontSize: 18),
        ),
        leading: Icon(icon, color: iconColor),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: onTap,
      ),
    );
  }

  // Widget _buildAccountOption(IconData icon, String title) {
  //   return Card(
  //     child: ListTile(
  //       leading: Icon(icon, color: Color(0xFF1565C0)),
  //       title: Text(title),
  //       trailing: const Icon(Icons.arrow_forward_ios),
  //       onTap: () {},
  //     ),
  //   );
  // }
}
