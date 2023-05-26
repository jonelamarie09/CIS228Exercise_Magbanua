import 'package:flutter/material.dart';
import 'about.dart';
import 'app_drawer.dart';

class HomeScreen extends StatelessWidget {
  final List<String> _drinkImagePaths = [
    'black.jpg',
    'matcha.jpg',
    'caramel.jpg',
    'mocha.jpg',
    'pumpkin.jpg',
  ];

  final List<String> _drinkItemNames = [
    'Americano',
    'Green Tea Matcha Latte',
    'Caramel Macchiato',
    'Mocha',
    'Pumpkin Spice Latte'
  ];

  final List<String> _comboImagePaths = [
    'chocomuffin.jpg',
    'cheesecake.jpg',
    'cinnamon.jpg',
    'cookie.jpg',
    'croissant.jpg',
    'donuts.jpg',
  ];

  final List<String> _comboItemNames = [
    'Chocolate Muffin',
    'Blueberry Cheesecake',
    'Cinnamon Rolls',
    'Cookies',
    'Croissant ',
    'Donuts,'
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Bean Boyage',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.orange,
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                // Handle search button pressed
              },
            ),
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {
                // Handle notifications button pressed
              },
            ),
          ],
        ),
        drawer: MyDrawer(), // Remove the drawer by using an empty Container
        body: Column(
          children: [
            TabBar(
              labelColor: Colors.orange,
              tabs: [
                Tab(text: 'Drinks'),
                Tab(text: 'Combo'),
                Tab(text: 'Sides'),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  _buildGridView(_drinkImagePaths, _drinkItemNames, 1), // Pass the drink images and names
                  _buildGridView(_comboImagePaths, _comboItemNames, 0.7), // Pass the combo images and names with a smaller childAspectRatio value
                  _buildGridView(_drinkImagePaths, _drinkItemNames, 1), // Pass the drink images and names
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGridView(List<String> imagePaths, List<String> itemNames, double childAspectRatio) {
    return CustomScrollView(
      slivers: [
        SliverGrid(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            childAspectRatio: childAspectRatio,
          ),
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return GestureDetector(
                onTap: () {
                  // Navigate to the details screen
                },
                child: Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: FractionallySizedBox(
                          widthFactor: 1,
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(imagePaths[index]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          itemNames[index],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  elevation: 5.0,
                  margin: EdgeInsets.symmetric(
                    horizontal: 8.0,
                    vertical: 8.0,
                  ),
                ),
              );
            },
            childCount: imagePaths.length,
          ),
        ),
      ],
    );
  }
}
