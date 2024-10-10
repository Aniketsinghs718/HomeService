import 'package:flutter/material.dart';
import 'booking_page.dart';

class ServiceDetailPage extends StatelessWidget {
  final String serviceName;
  final String serviceDescription;

  ServiceDetailPage({
    required this.serviceName,
    required this.serviceDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(serviceName),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Service description
            Text(
              serviceDescription,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),

            // Booking button
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BookingPage(serviceName: serviceName),
                  ),
                );
              },
              child: Text('Book Now'),
            ),
          ],
        ),
      ),
    );
  }
}
