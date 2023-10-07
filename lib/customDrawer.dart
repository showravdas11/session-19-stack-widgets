import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xff062541),
      child: Column(
        children: <Widget>[
          // Custom Drawer Header
          UserAccountsDrawerHeader(
            accountName: Text(
              'Showrav Das',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(255, 173, 196, 217)),
            ),
            accountEmail: Text(
              'Showravdas101@gmail.com',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(255, 173, 196, 217)),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://i.ibb.co/gwGyZP0/5556468.png"), // Replace with your image
            ),
            decoration: BoxDecoration(
              color: Color(
                  0xff062541), // Change this color to your desired background color
            ),
          ),
          // Drawer Items
          ListTile(
            leading: Icon(Icons.home, color: Color.fromARGB(255, 173, 196, 217)),
            title: Text(
              'Home',
              style: TextStyle(color: Color.fromARGB(255, 173, 196, 217)),
            ),
            onTap: () {
              // Handle the Home item tap here
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.favorite, color: Color.fromARGB(255, 173, 196, 217)),
            title: Text(
              'Favorite',
              style: TextStyle(color: Color.fromARGB(255, 173, 196, 217)),
            ),
            onTap: () {
              // Handle the Settings item tap here
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.login, color: Color.fromARGB(255, 173, 196, 217)),
            title: Text(
              'Login',
              style: TextStyle(color: Color.fromARGB(255, 173, 196, 217)),
            ),
            onTap: () {
              // Handle the Settings item tap here
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.book, color: Color.fromARGB(255, 173, 196, 217)),
            title: Text(
              'Book',
              style: TextStyle(color: Color.fromARGB(255, 173, 196, 217)),
            ),
            onTap: () {
              // Handle the Settings item tap here
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.logout, color: Color.fromARGB(255, 173, 196, 217)),
            title: Text(
              'Logout',
              style: TextStyle(color: Color.fromARGB(255, 173, 196, 217)),
            ),
            onTap: () {
              // Handle the Settings item tap here
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.compare, color: Color.fromARGB(255, 173, 196, 217)),
            title: Text(
              'Compare',
              style: TextStyle(color: Color.fromARGB(255, 173, 196, 217)),
            ),
            onTap: () {
              // Handle the Settings item tap here
              Navigator.pop(context);
            },
          ),
          // Add more ListTile widgets for additional drawer items
        ],
      ),
    );
  }
}
