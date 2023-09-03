import 'package:domestic_workers/pages/profile_screen.dart';
import 'package:domestic_workers/pages/setting_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'details_screen.dart';
import 'notification_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKEY = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKEY,
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: Container(
          color: const Color.fromRGBO(31, 58, 47, 1.0),
          child: ListView(
            padding: const EdgeInsets.all(20),
            children: <Widget>[
              SizedBox(
                height: 220,
              ),
              // DrawerHeader(
              //   decoration: BoxDecoration(
              //     image: DecorationImage(
              //       image: AssetImage('images/drawer_header_bg.jpg'),
              //       fit: BoxFit.cover,
              //     ),
              //   ),
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       CircleAvatar(
              //         radius: 40,
              //         backgroundImage: AssetImage('images/user_avatar.jpg'),
              //       ),
              //       SizedBox(height: 10),
              //       Text(
              //         'Welcome,',
              //         style: TextStyle(
              //           color: Colors.white,
              //           fontSize: 18,
              //           fontWeight: FontWeight.bold,
              //         ),
              //       ),
              //       Text(
              //         'Yasmeen Tahat',
              //         style: TextStyle(
              //           color: Colors.white,
              //           fontSize: 24,
              //           fontWeight: FontWeight.bold,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                title: Text(
                  'Home',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
              ),
              SizedBox(
                height: 20,
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.profile_circled,
                  color: Colors.white,
                ),
                title: Text(
                  'Profile',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfileScreen()),
                  );
                },
              ),
              SizedBox(
                height: 20,
              ),
              ListTile(
                leading: Icon(
                  Icons.notification_add,
                  color: Colors.white,
                ),
                title: Text(
                  'Notification',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NotificationScreen()),
                  );
                },
              ),
              SizedBox(
                height: 20,
              ),
              Spacer(),
              ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                title: Text(
                  'Setting',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SettingsScreen()),
                  );
                },
              ),
              SizedBox(
                height: 220,
              ),
              ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                title: Text(
                  'Log Out',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            _buildTopRow(context),
            _buildWelcomeText(),
            _buildRoomsSection(),
            _buildStatsSection(),
          ],
        ),
      ),
      // bottomNavigationBar: ConvexAppBar(
      //   backgroundColor: Color.fromRGBO(31, 58, 47, 1.0),
      //   style: TabStyle.reactCircle,
      //   items: [
      //     TabItem(icon: Icons.home, title: 'Home'),
      //     TabItem(icon: Icons.person, title: 'Profile'),
      //     TabItem(icon: Icons.settings, title: 'Settings'),
      //   ],
      //   initialActiveIndex: 0,
      //   onTap: (int index) {
      //     // Handle navigation to different sections here
      //   },
      // ),
    );
  }

  Widget _buildTopRow(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu, color: Colors.black),
            onPressed: () {
              // Navigator.of(context).push(
              //   // MaterialPageRoute(
              //   //   // builder: (context) => Drawer(),
              //   // ),
              // ); // Handle menu button press
            },
          ),
          Spacer(),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage('images/yasmeen.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 15),
        ],
      ),
    );
  }

  Widget _buildWelcomeText() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Welcome",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 30),
          Text(
            "Yasmeen Tahat",
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 15),
          Text(
            "Hey, Yasmeen we allow you to handle your electronics from in or outside your house. "
            "We recommend you to please read the instructions carefully and enjoy the luxury.",
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(height: 30),
          Text("Rooms",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
          SizedBox(height: 15),
          Container(
            height: 300,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                _buildRoomItem(context, 'images/picture1.jpg', 'Living Room'),
                SizedBox(width: 15),
                _buildRoomItem(context, 'images/picture1.jpg', 'Bedroom'),
                SizedBox(width: 15),
                _buildRoomItem(context, 'images/picture1.jpg', 'Kitchen'),
              ],
            ),
          ),
          SizedBox(height: 15),
        ],
      ),
    );
  }

  Widget _buildRoomsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            "Rooms",
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 15),
        Container(
          height: 300,
          width: double.infinity,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              _buildRoomItem(context, 'images/picture1.jpg', 'Living Room'),
              SizedBox(width: 15),
              _buildRoomItem(context, 'images/picture1.jpg', 'Bedroom'),
              SizedBox(width: 15),
              _buildRoomItem(context, 'images/picture1.jpg', 'Kitchen'),
            ],
          ),
        ),
        SizedBox(height: 15),
      ],
    );
  }

  Widget listItem(String imgpath) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetailPage(
                  imgPath: imgpath,
                  roomName: '',
                )));
      },
      child: Container(
        width: 325,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          image: DecorationImage(image: AssetImage(imgpath), fit: BoxFit.cover),
        ),
      ),
    );
  }

  Widget _buildRoomItem(BuildContext context, String imgPath, String roomName) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) =>
                DetailPage(imgPath: imgPath, roomName: roomName),
          ),
        );
      },
      child: Container(
        width: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          image: DecorationImage(
            image: AssetImage(imgPath),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            gradient: LinearGradient(
              colors: [Colors.transparent, Colors.black.withOpacity(0.7)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              roomName,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildStatsSection() {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        color: Color.fromRGBO(31, 58, 47, 1.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildStatItem('images/creative.png', "6 Lights", true),
          _buildStatItem('images/air-conditioner.png', "Air Conditioner", true),
          _buildStatItem(
              'images/washing-machine.png', "Washing Machine", false),
        ],
      ),
    );
  }

  Widget _buildStatItem(String imgPath, String name, bool value) {
    return Container(
      width: 110,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: value ? Colors.white : Color.fromRGBO(75, 97, 88, 1.0),
      ),
      child: Column(
        children: <Widget>[
          SizedBox(height: 20),
          Image(
              image: AssetImage(imgPath),
              width: 45,
              height: 45,
              color: value ? Colors.black : Colors.white),
          SizedBox(height: 15),
          Text(name,
              style: TextStyle(
                  fontSize: 13, color: value ? Colors.black : Colors.white)),
          SizedBox(height: 5),
          Switch(
            value: value,
            onChanged: (newVal) {
              // Handle switch state change
            },
            activeColor: Colors.green,
          )
        ],
      ),
    );
  }
}
