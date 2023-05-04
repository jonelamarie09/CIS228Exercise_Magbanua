import 'package:flutter/material.dart';
import 'main.dart';
import 'productdetails.dart';

import 'app_drawer.dart'; // import your Drawer class

class ProductList extends MyApp {
  final List<Map<String, String>> products = [
    {
      'name': 'Arabica Bean',
      'description':
          'Arabica beans are a type of coffee bean that is larger and more oval-shaped than Robusta beans.',
      'price': '\₱780.00',
      'image': '../assets/arabica.jpg'
    },
    {
      'name': 'Robusta Bean',
      'description':
          'Robusta beans are a type of coffee bean that are smaller and rounder than Arabica beans. They have a strong, bold flavor with a higher caffeine content and a darker color when roasted.',
      'price': '\₱880.00',
      'image': '../assets/robusta.jpg'
    },
    {
      'name': 'Excelsa Bean',
      'description':
          'Excelsa beans have an elongated shape and are similar in size to Arabica beans. They are known for their unique flavor profile that is often described as tart and fruity with a hint of smokiness.',
      'price': '\₱1390.00',
      'image': '../assets/excelsa.jpg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
        backgroundColor: Colors.black,
      ),
      drawer: const MyDrawer(), // use your Drawer class here
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset(products[index]['image']!),
            title: Text(products[index]['name']!),
            subtitle: Text(products[index]['description']!),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(products[index]['price']!),
                const SizedBox(width: 10),
                IconButton(
                  icon: Icon(Icons.add_shopping_cart),
                  onPressed: () {
                    // TODO: Implement add to cart functionality.
                  },
                ),
                IconButton(
                  icon: Icon(Icons.payment),
                  onPressed: () {
                    // TODO: Implement buy functionality.
                  },
                ),
              ],
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ProductDetails(product: products[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}