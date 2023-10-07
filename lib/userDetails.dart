import 'package:custom_widget/userModel.dart';
import 'package:flutter/material.dart';

class UserDetails extends StatefulWidget {
  const UserDetails({super.key});

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  @override
  Widget build(BuildContext context) {
    final users = ModalRoute.of(context)!.settings.arguments as UserModel;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Details Screen"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            child: Text(users.name, style: TextStyle(color: Colors.white, fontSize: 25),),
          ),
          Container(
            alignment: Alignment.center,
            child: Text(users.message,  style: TextStyle(color: Colors.white, fontSize: 25),),
          )
        ],
      ),
    );
  }
}