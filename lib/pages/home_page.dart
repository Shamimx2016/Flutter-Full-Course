import 'package:flutter/material.dart';
import 'package:project/styles/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.Background,
        elevation: 0,
        title: const Text("App Data"),
        centerTitle: false,
        actions: const [
          Icon(Icons.location_on_outlined),
        ],
      ),
      body: ListView(
        children: mockUsersFromServer(),
      ),
    );
  }
}

Widget _useriteam() {
  return Row(
    children: [
      Image.asset(
        "assets/temp/user1.png",
        height: 40,
        width: 40,
      ),
      const SizedBox(
        width: 16,
      ),
      const Text(
        "Shamim Chowdhury",
        style: TextStyle(color: Colors.white),
      )
    ],
  );
}

List<Widget> mockUsersFromServer() {
  List<Widget> users = [];
  for (var i = 0; i < 100; i++) {
    users.add(_useriteam());
  }
  return users;
}
