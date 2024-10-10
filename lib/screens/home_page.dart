import 'package:flutter/material.dart';
import 'service_list_page.dart';
import '../widgets/drawer_menu.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, String>> categories = [
    {'name': 'Plumbing', 'image': 'assets/images/plumbing.jpeg'},
    {'name': 'Electrical', 'image': 'assets/images/electrical.jpeg'},
    {'name': 'Cleaning', 'image': 'assets/images/cleaning.jpg'},
    {'name': 'Painting', 'image': 'assets/images/painting.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Services'),
      ),
      drawer: DrawerMenu(),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Display 2 items per row
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.8, // Adjust the size of the grid items
        ),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ServiceListPage(category: categories[index]['name']!),
                ),
              );
            },
            child: Card(
              elevation: 5,
              child: Column(
                children: [
                  Expanded(
                    child: Image.asset(
                      categories[index]['image']!,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      categories[index]['name']!,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
