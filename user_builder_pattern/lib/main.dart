import 'package:flutter/material.dart';
import 'package:uaer_builder_pattern/user_builder_pattern.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("User Builder Example"), 
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,),
        body: UserListWidget(),
      ),
    );
  }
}

class UserListWidget extends StatelessWidget {
  final List<User> users = [
    UserBuilder(firstName: "Aya", lastName: "Mohamed")
        .setAge(23)
        .setPhone("01278263483")
        .build(),
    UserBuilder(firstName: "Eslam", lastName: "Mohamed")
        .setAge(28)
        .setPhone("0123456789")
        .build(),
    UserBuilder(firstName: "Shrouk", lastName: "Diaa")
        .setAge(26)
        .setPhone("01125874963")
        .build(),
      UserBuilder(firstName: "Yara", lastName: "Abdelwahed")
        .build(),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        final user = users[index];
        return ListTile(
          title: Text("${user.firstName} ${user.lastName}"),
          subtitle:
              Text("Age: ${user.age ?? "N/A"}, Phone: ${user.phone ?? "N/A"}"),
        );
      },
    );
  }
}
