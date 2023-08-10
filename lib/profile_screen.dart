import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final List<SocialIcon> socialIcons = [
    SocialIcon(iconAsset: 'lib/assets/twitter.png', handle: '@eliezer_jr', url: 'https://twitter.com/Eliezer_Jnr'),
    SocialIcon(iconAsset: 'lib/assets/github.png', handle: 'Eliezer-Jr', url: 'https://github.com/Eliezer-Jr'),
    SocialIcon(iconAsset: 'lib/assets/linkedin.png', handle: 'Ahorlu Eliezer Jnr', url: 'https://www.linkedin.com/in/eliezer-ahorlu-mawuli-jnr-386976237/'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('lib/assets/profile_image.jpg'), // Replace with your image
            ),
            SizedBox(height: 20),
            Text(
              'AHORLU ELIEZER MAWULI JR.',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              'Developer',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            SizedBox(height: 20),
            Text(
              'About Me',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Passionate about creating awesome Flutter apps that deliver meaningful user experiences.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Connect with Me',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: socialIcons.map((icon) {
                return Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(8),
                          color: const Color.fromARGB(255, 182, 197, 209),
                        ),
                        child: Center(
                          child: Image.asset(
                            icon.iconAsset,
                            width: 30,
                            height: 30,
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        icon.handle,
                        style: TextStyle(fontSize: 16, color: Colors.blue),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

class SocialIcon {
  final String iconAsset;
  final String handle;
  final String url;

  SocialIcon({required this.iconAsset, required this.handle, required this.url});
}
