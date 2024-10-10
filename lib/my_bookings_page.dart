import 'package:flutter/material.dart';

class MyBookingsPage extends StatelessWidget {
  final List<Map<String, String>> bookings = [
    {
      'service': 'Plumbing',
      'date': '2024-10-15',
      'time': '10:00 AM',
      'address': '123 Main St',
    },
    {
      'service': 'Electrical',
      'date': '2024-10-16',
      'time': '2:00 PM',
      'address': '456 Elm St',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Bookings'),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView.builder(
        itemCount: bookings.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(8.0),
            color: Colors.lightBlue[50],
            child: ListTile(
              title: Text(
                bookings[index]['service']!,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Date: ${bookings[index]['date']!}\n'
                'Time: ${bookings[index]['time']!}\n'
                'Address: ${bookings[index]['address']!}',
              ),
            ),
          );
        },
      ),
    );
  }
}
