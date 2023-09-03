import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.green, Color.fromRGBO(31, 58, 47, 1.0)],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      icon: Icon(Icons.arrow_back, color: Colors.white),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 80,
                      backgroundImage: AssetImage('images/yasmeen.jpg'),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Text(
                  'yasmeeno',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Flutter Developer',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20),
                Column(
                  children: [
                    ProfileSectionCard(
                      title: 'Contact Information',
                      icon: Icons.contact_mail,
                      content: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ProfileInfoRow(
                              label: 'Email', value: 'johndoe@example.com'),
                          ProfileInfoRow(
                              label: 'Phone', value: '+1 123 456 7890'),
                          ProfileInfoRow(
                              label: 'Location', value: 'New York, USA'),
                        ],
                      ),
                    ),
                  ],
                ),
                ProfileSectionCard(
                  title: 'Work Experience',
                  icon: Icons.work,
                  content: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProfileInfoRow(
                          label: 'Senior Flutter Developer',
                          value: 'ABC Corp.'),
                      ProfileInfoRow(
                          label: 'UI/UX Designer', value: 'XYZ Agency'),
                    ],
                  ),
                ),
                ProfileSectionCard(
                  title: 'Education',
                  icon: Icons.school,
                  content: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProfileInfoRow(
                          label: 'Bachelor of Science in Computer Science',
                          value: 'XYZ University'),
                    ],
                  ),
                ),
                ProfileSectionCard(
                  title: 'Skills',
                  icon: Icons.star,
                  content: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          'Flutter, Dart, UI/UX Design, Firebase, GraphQL, RESTful APIs, ...'),
                    ],
                  ),
                ),
                ProfileSectionCard(
                  title: 'Projects',
                  icon: Icons.list,
                  content: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Project A: Description of Project A.'),
                      Text('Project B: Description of Project B.'),
                      // Add more projects here
                    ],
                  ),
                ),
                ProfileSectionCard(
                  title: 'Hobbies/Interests',
                  icon: Icons.favorite,
                  content: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Reading, Hiking, Playing Guitar, Traveling'),
                    ],
                  ),
                ),
                ProfileSectionCard(
                  title: 'Languages',
                  icon: Icons.language,
                  content: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('English, Spanish'),
                    ],
                  ),
                ),
                // Add more ProfileSectionCard widgets here
                // ...
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(Icons.facebook),
                      onPressed: () {
                        // Implement social media link handling
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.facebook),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.link),
                      onPressed: () {},
                    ),
                  ],
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProfileSectionCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Widget content;

  const ProfileSectionCard({
    Key? key,
    required this.title,
    required this.icon,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon),
                SizedBox(width: 8),
                Text(
                  title,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 16),
            content,
          ],
        ),
      ),
    );
  }
}

class ProfileInfoRow extends StatelessWidget {
  final String label;
  final String value;

  const ProfileInfoRow({Key? key, required this.label, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          label + ': ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(value),
      ],
    );
  }
}
