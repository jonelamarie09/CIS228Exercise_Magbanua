import 'package:flutter/material.dart';
import 'app_drawer.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart Items'),
        backgroundColor: Colors.purple,
      ),
      drawer: const MyDrawer(),
      body: const Center(
        child: Text('Your cart is empty.'),
      ),
    );
  }
}