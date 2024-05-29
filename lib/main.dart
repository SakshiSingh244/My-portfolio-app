import 'package:flutter/material.dart';
import 'about_me_page.dart';
import 'my_projects_page.dart';
import "important_links_page.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PortfolioPage(),
    );
  }
}

class PortfolioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          color: Colors.white, // Background color for app bar title
          child: const Text(
            'Portfolio',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _buildHeader(),
                    _buildInfoRow(Icons.school, 'VIT University, Vellore'),
                    _buildInfoRow(Icons.location_on, 'Tiruppur, Tamil Nadu'),
                    _buildInfoRow(Icons.mail, 'singhsakshi200424@gmail.com'),
                    _buildInfoRow(Icons.phone, '+91-9843068268'),
                    _buildButtonRow(context),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildHeader() {
  return const Padding(
    padding: EdgeInsets.all(16.0),
    child: Row(
      children: [
        // Left column with profile picture
        CircleAvatar(
          radius: 50,
          backgroundImage:
              AssetImage('assets/profile.jpg'), // Add your profile image
        ),
        SizedBox(width: 20), // Add some space between the picture and text

        // Right column with name and title
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'SAKSHI SINGH',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              'Flutter App Developer',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget _buildInfoRow(IconData icon, String text) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
    child: Row(
      children: [
        Icon(icon, size: 30),
        SizedBox(width: 20),
        Text(
          text,
          style: TextStyle(fontSize: 18),
        ),
      ],
    ),
  );
}

Widget _buildButtonRow(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
      children: [
        _buildButton(context, 'About Me'),
        SizedBox(height: 10),
        _buildButton(context, 'My Projects'),
        SizedBox(height: 10),
        _buildButton(context, 'Important Links'),
      ],
    ),
  );
}

Widget _buildButton(BuildContext context, String text) {
  return SizedBox(
    width: double.infinity,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: Color(0xFFF9A0A0),
        backgroundColor: Colors.black, // Text color of the button
      ),
      onPressed: () {
        if (text == 'About Me') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AboutMePage()),
          );
        } else if (text == 'My Projects') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MyProjectsPage()),
          );
        } else if (text == 'Important Links') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ImportantLinksPage()),
          );
        }
      },
      child: Text(
        text,
        style: TextStyle(fontSize: 18),
      ),
    ),
  );
}
