import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
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
              crossAxisAlignment: CrossAxisAlignment.start,
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
                ProfileSectionCard(
                  title: 'Notifications',
                  icon: Icons.notifications,
                  content: Switch(
                    value: true,
                    onChanged: (value) {},
                  ),
                ),
                ProfileSectionCard(
                  title: 'Language',
                  icon: Icons.language,
                  content: DropdownButton<String>(
                    value: 'English',
                    onChanged: (newValue) {},
                    items: <String>[
                      'English',
                      'Spanish',
                      'French',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
                ProfileSectionCard(
                  title: 'Dark Mode',
                  icon: Icons.dark_mode,
                  content: Switch(
                    value: false,
                    onChanged: (value) {},
                  ),
                ),
                ProfileSectionCard(
                  title: 'Sound Effects',
                  icon: Icons.volume_up,
                  content: Switch(
                    value: true,
                    onChanged: (value) {},
                  ),
                ),
                ProfileSectionCard(
                  title: 'Account Settings',
                  icon: Icons.account_circle,
                  content: Column(
                    children: [
                      ListTile(
                        title: Text('Edit Profile'),
                        onTap: () {
                          // Implement edit profile functionality
                        },
                      ),
                      ListTile(
                        title: Text('Change Password'),
                        onTap: () {
                          // Implement change password functionality
                        },
                      ),
                    ],
                  ),
                ),
                ProfileSectionCard(
                  title: 'Privacy Settings',
                  icon: Icons.lock,
                  content: Column(
                    children: [
                      ListTile(
                        title: Text('Enable Location Services'),
                        trailing: Switch(
                          value: true,
                          onChanged: (value) {},
                        ),
                      ),
                      ListTile(
                        title: Text('Allow Cookies'),
                        trailing: Switch(
                          value: true,
                          onChanged: (value) {},
                        ),
                      ),
                    ],
                  ),
                ),
                ProfileSectionCard(
                  title: 'App Preferences',
                  icon: Icons.app_settings_alt,
                  content: ListTile(
                    title: Text('Go to App Preferences'),
                    onTap: () {
                      // Navigate to app preferences screen
                    },
                  ),
                ),
                ProfileSectionCard(
                  title: 'Appearance',
                  icon: Icons.apartment,
                  content: Column(
                    children: [
                      ListTile(
                        title: Text('Theme Color'),
                        onTap: () {
                          // Implement theme color selection functionality
                        },
                      ),
                      ListTile(
                        title: Text('Font Size'),
                        onTap: () {
                          // Implement font size selection functionality
                        },
                      ),
                    ],
                  ),
                ),
                ProfileSectionCard(
                  title: 'Delete Account',
                  icon: Icons.delete,
                  content: ListTile(
                    title: Text('Delete My Account'),
                    onTap: () {
                      // Implement account deletion functionality
                    },
                  ),
                ),
                // Add more settings options here
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
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 5,
            spreadRadius: 1,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Material(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: () {
            // Handle the card tap if needed
          },
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
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                content,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
