import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Profile Settings'),
            leading: Icon(Icons.person),
            onTap: () {
              // Navigate to profile settings page
            },
          ),
          ListTile(
            title: Text('Notification Settings'),
            leading: Icon(Icons.notifications),
            onTap: () {
              // Navigate to notification settings page
            },
          ),
          ListTile(
            title: Text('Privacy Settings'),
            leading: Icon(Icons.lock),
            onTap: () {
              // Navigate to privacy settings page
            },
          ),
          // Add more settings here
        ],
      ),
    );
  }
}
