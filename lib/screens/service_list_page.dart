import 'package:flutter/material.dart';
import 'service_detail_page.dart';
import '../services/data_service.dart';
import '../models/service.dart';

class ServiceListPage extends StatelessWidget {
  final String category;

  ServiceListPage({required this.category});

  @override
  Widget build(BuildContext context) {
    List<Service> services;
    List<String> serviceImages;

    if (category == 'Plumbing') {
      services = DataService.getPlumbingServices();
      serviceImages = [
        'assets/images/plumbing.png',
        'assets/images/plumbing.png'
      ];
    } else if (category == 'Electrical') {
      services = DataService.getElectricalServices();
      serviceImages = [
        'assets/images/electrical.png',
        'assets/images/electrical.png'
      ];
    } else {
      services = [];
      serviceImages = [];
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('$category Services'),
      ),
      body: ListView.builder(
        itemCount: services.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            elevation: 5,
            child: ListTile(
              leading: Image.asset(
                serviceImages[index],
                fit: BoxFit.cover,
                width: 50,
              ),
              title: Text(services[index].name),
              subtitle: Text('\$${services[index].price.toStringAsFixed(2)}'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        ServiceDetailPage(service: services[index]),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
