import 'package:custom_widget/CustomDrawer.dart';
import 'package:custom_widget/userDetails.dart';
import 'package:custom_widget/userModel.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UserProfileScreen(),
    );
  }
}

class UserProfileScreen extends StatefulWidget {
  @override
  _UserProfileScreenState createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  bool isOnline = true;
  bool switchValue = false;
  bool checkBoxValue = false;

  List<UserModel> users = [];
  int _myIndex = 0;

  void _getUserInfo() {
    users = UserModel.getUsers();
  }

  @override
  Widget build(BuildContext context) {
    _getUserInfo();
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('User Profile'),
      ),
      drawer: CustomDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Container(
                color: Colors.black,
                child: ListView.builder(
                  // itemExtent: 100,
                  itemCount: users.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const UserDetails(),
                              settings: RouteSettings(
                                arguments: users[index],
                              ),
                            ),
                          );
                        },
                      child: ListTile(
                        textColor: Colors.white,
                        // tileColor: Colors.black,
                        contentPadding: EdgeInsets.all(8),
                        leading: Stack(
                          // alignment: Alignment.center,
                          children: <Widget>[
                            // Circular avatar profile
                            CircleAvatar(
                              radius: 80.0,
                              // backgroundImage: NetworkImage('https://i.ibb.co/gwGyZP0/5556468.png', ),
                              child: ClipRRect(
                                child: Image.network(users[index].image),
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                            ),
                            // Online status indicator
                            Positioned(
                              bottom: 0,
                              right: 55,
                              child: Container(
                                width: 15.0,
                                height: 15.0,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: const Color.fromARGB(255, 41, 228, 47),
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 2.0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        title: Text(users[index].name),
                        subtitle: Text(users[index].message),
                        trailing: CircleAvatar(
                          radius: 7.0,
                          // backgroundImage: NetworkImage('https://i.ibb.co/gwGyZP0/5556468.png', ),
                          child: ClipRRect(
                            child: Image.network(users[index].image),
                            borderRadius: BorderRadius.circular(7.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio(
                  value: true,
                  groupValue: switchValue,
                  onChanged: (value) {
                    setState(() {
                      switchValue = value!;
                    });
                  },
                ),
                Text('Radio Button 1'),
                Radio(
                  value: false,
                  groupValue: switchValue,
                  onChanged: (value) {
                    setState(() {
                      switchValue = value!;
                    });
                  },
                ),
                Text('Radio Button 2'),
              ],
            ),
            SizedBox(height: 20.0),
            Switch(
              value: switchValue,
              onChanged: (value) {
                setState(() {
                  switchValue = value;
                });
              },
            ),
            SizedBox(height: 20.0),
            Checkbox(
              value: checkBoxValue,
              onChanged: (value) {
                setState(() {
                  checkBoxValue = value!;
                });
              },
            ),



            SizedBox(height: 20.0),

            BottomNavigationBar(
              backgroundColor: Colors.black,
              onTap: (index) {
          setState(() {
            _myIndex = index;
          });
        },

        currentIndex: _myIndex,
              type: BottomNavigationBarType.shifting,

              //selected icon
              // selectedFontSize: 20,
              selectedIconTheme: IconThemeData(
                  color: Color.fromARGB(208, 32, 122, 40), size: 40),
              selectedItemColor: Color.fromARGB(208, 32, 122, 40),

              //unselected
              unselectedIconTheme: IconThemeData(
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
              unselectedItemColor: const Color.fromARGB(255, 0, 0, 0),

              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.chat),
                  label: 'Chats',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.call),
                  label: 'Calls',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.people),
                  label: 'People',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.delete),
                  label: 'People',
                ),
              ],
            ),

            // Add more user details as needed
          ],
        ),
      ),
    );
  }
}
