import 'package:flutter/material.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Me'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Upper row with description
              _buildDescription(),
              const SizedBox(height: 20),
              // Lower row with skills
              _buildSkills(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDescription() {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        children: [
          Text(
            'I am a third-year Electronics Engineering student with a strong interest in coding. I am proficient in front end application development using Flutter and an aspiring backend application developer.',
            style: TextStyle(fontSize: 18),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          Text(
            'Here are the list of my skills:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildSkills() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildSkillCircle('Java'),
            _buildSkillCircle('Python'),
            _buildSkillCircle('C++'),
          ],
        ),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildSkillCircle('Dart'),
            _buildSkillCircle('Flutter'),
          ],
        ),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildSkillCircle('Matlab'),
            _buildSkillCircle('Verilog'),
            _buildSkillCircle('KeilMicro Vision'),
          ],
        ),
      ],
    );
  }

  Widget _buildSkillCircle(String skill) {
    return Column(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundColor: Color(0xFFF9A0A0),
          child: Text(
            skill,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.black, fontSize: 16),
          ),
        ),
        const SizedBox(height: 5),
      ],
    );
  }
}
