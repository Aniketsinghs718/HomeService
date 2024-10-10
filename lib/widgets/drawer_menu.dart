import 'package:flutter/material.dart';
import '../screens/my_bookings_page.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child:
                Text('Home Service App', style: TextStyle(color: Colors.white)),
          ),
          ListTile(
            title: Text('My Bookings'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyBookingsPage()),
              );
            },
          ),
          ListTile(
            title: Text('Settings'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Profile'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
