import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _showMilliseconds = false;
  double _updateFrequency = 100.0; // milliseconds

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Display Options',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            SwitchListTile(
              title: Text('Show Milliseconds'),
              value: _showMilliseconds,
              onChanged: (value) {
                setState(() {
                  _showMilliseconds = value;
                });
              },
            ),
            SizedBox(height: 20),
            Text(
              'Update Frequency',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Slider(
              value: _updateFrequency,
              onChanged: (newValue) {
                setState(() {
                  _updateFrequency = newValue;
                });
              },
              min: 50.0,
              max: 1000.0,
              divisions: 19,
              label: '${_updateFrequency.toInt()} ms',
            ),
          ],
        ),
      ),
    );
  }
}
