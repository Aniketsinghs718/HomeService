import 'package:flutter/material.dart';
import 'service_detail_page.dart';

class ServiceListPage extends StatelessWidget {
  final List<Map<String, String>> services = [
    {
      'title': 'Plumbing',
      'image': 'assets/plumbing.jpeg',
      'description': 'Reliable plumbing services for your home.'
    },
    {
      'title': 'Electrical',
      'image': 'assets/electrical.jpeg',
      'description': 'Expert electrical services at your convenience.'
    },
    {
      'title': 'Cleaning',
      'image': 'assets/cleaning.jpg',
      'description': 'Thorough cleaning services to keep your space spotless.'
    },
    // Add more services here if needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Services'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of items in a row
            childAspectRatio: 0.75, // Aspect ratio of each grid item
            crossAxisSpacing: 16.0,
            mainAxisSpacing: 16.0,
          ),
          itemCount: services.length,
          itemBuilder: (context, index) {
            return ServiceCard(
              title: services[index]['title']!,
              image: services[index]['image']!,
              description: services[index]['description']!,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ServiceDetailPage(
                      serviceName: services[index]['title']!,
                      serviceDescription: services[index]['description']!,
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  final String title;
  final String image;
  final String description;
  final VoidCallback onTap;

  const ServiceCard({
    Key? key,
    required this.title,
    required this.image,
    required this.description,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 8, // Increased elevation for a more premium feel
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15), // Rounded corners
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
                height: 140, // Adjust the height as needed
                width: double.infinity,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 14,
                      color:
                          Colors.grey[700], // Darker color for better contrast
                    ),
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
