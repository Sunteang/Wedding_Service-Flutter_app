import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingPage> {
  bool _notificationsEnabled = true;
  bool _darkModeEnabled = false;
  bool _locationSharingEnabled = true;
  bool _profileVisibilityEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          // Profile Settings Section
          const ListTile(
            title: Text(
              'Profile Settings',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            leading: Icon(Icons.person, color: Colors.blueAccent),
          ),
          const Divider(),
          _buildSettingsTile(
            context,
            Icons.person,
            "Edit Profile",
            () {
              // Navigate to profile edit page (you can create a separate page for this)
            },
          ),
          _buildSettingsTile(
            context,
            Icons.security,
            "Change Password",
            () {
              // Navigate to change password page
            },
          ),
          const Divider(),

          // Notification Settings Section
          const ListTile(
            title: Text(
              'Notification Settings',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            leading: Icon(Icons.notifications, color: Colors.amber),
            trailing: Icon(Icons.chevron_right, color: Colors.amber),
          ),
          const Divider(),
          SwitchListTile(
            value: _notificationsEnabled,
            title: const Text('Enable Notifications'),
            secondary: const Icon(Icons.notifications, color: Colors.amber),
            onChanged: (bool value) {
              setState(() {
                _notificationsEnabled = value;
              });
            },
          ),
          SwitchListTile(
            value: _darkModeEnabled,
            title: const Text('Enable Dark Mode'),
            secondary: const Icon(Icons.dark_mode, color: Colors.grey),
            onChanged: (bool value) {
              setState(() {
                _darkModeEnabled = value;
              });
            },
          ),
          const Divider(),

          // Privacy Settings Section
          const ListTile(
            title: Text(
              'Privacy Settings',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            leading: Icon(Icons.lock, color: Colors.redAccent),
            trailing: Icon(Icons.chevron_right, color: Colors.redAccent),
          ),
          const Divider(),
          SwitchListTile(
            value: _locationSharingEnabled,
            title: const Text('Location Sharing'),
            secondary: const Icon(Icons.location_on, color: Colors.green),
            onChanged: (bool value) {
              setState(() {
                _locationSharingEnabled = value;
              });
            },
          ),
          SwitchListTile(
            value: _profileVisibilityEnabled,
            title: const Text('Profile Visibility'),
            secondary: const Icon(Icons.visibility, color: Colors.blue),
            onChanged: (bool value) {
              setState(() {
                _profileVisibilityEnabled = value;
              });
            },
          ),
          const Divider(),

          // About App Section
          ListTile(
            title: const Text(
              'About App',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            leading: const Icon(Icons.info, color: Colors.blue),
            trailing: const Icon(Icons.chevron_right, color: Colors.blue),
            onTap: () {
              // Navigate to About Page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AboutScreen()),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildSettingsTile(
      BuildContext context, IconData icon, String title, Function() onTap) {
    return Card(
      child: ListTile(
        leading: Icon(icon, color: Colors.blue),
        title: Text(title),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: onTap,
      ),
    );
  }
}

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About App'),
        backgroundColor: Colors.green,
      ),
      body: const Center(
        child: Text(
          'This is a simple settings screen example.\n'
          'Designed using Flutter.',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
