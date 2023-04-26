import 'package:flutter/material.dart';
import 'package:main/main.dart';
import 'app_drawer.dart';

class AboutPage extends MyApp {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
        backgroundColor: Colors.black,
      ),
      drawer: MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.asset(
              '../assets/coffee.png', // Replace with your image path
              height: 300.0,
              width: 1500.0,
            ),
            SizedBox(height: 16.0),
            Text(
              'At Bean Voyage, we are passionate about bringing you the finest, ethically-sourced coffee beans from around the world. From the first sip to the last, we are committed to delivering a rich and satisfying coffee experience that delights the senses and nourishes the soul. Whether you are a coffee connoisseur or just looking for a great cup of joe, we invite you to join us on a journey of taste and discovery.',
              style: TextStyle(fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}