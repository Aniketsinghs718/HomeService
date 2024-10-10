import 'package:flutter/material.dart';

class MyBookingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Bookings'),
      ),
      body: Center(
        child: Text('No bookings yet!'),
      ),
    );
  }
}
