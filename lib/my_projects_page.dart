import 'package:flutter/material.dart';

class MyProjectsPage extends StatelessWidget {
  const MyProjectsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/background.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('My Projects'),
        ),
        backgroundColor:
            Colors.transparent, // Make scaffold background transparent
        body: const Center(
          child: Text(
            'I am currently working on a project "lost and found app" with VinnovateIt and also working on a food recipe app',
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
