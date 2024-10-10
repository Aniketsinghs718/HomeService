import 'package:flutter/material.dart';
import 'booking_page.dart';
import '../models/service.dart';

class ServiceDetailPage extends StatelessWidget {
  final Service service;

  ServiceDetailPage({required this.service});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(service.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/images/${service.name.toLowerCase()}.png', // Using dynamic image based on service
              fit: BoxFit.cover,
              height: 250,
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    service.name,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  Text(service.description),
                  SizedBox(height: 16),
                  Text('Price: \$${service.price.toStringAsFixed(2)}'),
                  SizedBox(height: 32),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BookingPage(service: service),
                        ),
                      );
                    },
                    child: Text('Book Service'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
