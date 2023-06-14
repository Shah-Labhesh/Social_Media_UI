import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../models/users.dart';
import '../widgets/nagivation_bar.dart';
import '../widgets/post_items.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    fetchUserData();
  }

  fetchUserData() async {
    try {
      var jsonString = await rootBundle.loadString("assets/json/data.json");
      var data = jsonDecode(jsonString);
      var userData = data["users"];
      UserModel.user =
          List.from(userData).map((user) => Users.fromJson(user)).toList();
    } catch (e) {
      print("Error: $e");
    } finally {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 80,
              decoration: BoxDecoration(color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(26.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Social Media",
                      style: TextStyle(
                        color: Colors.blue[900],
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.search,
                      size: 30,
                      color: Colors.black54,
                    )
                  ],
                ),
              ),
            ),
            (UserModel.user.isEmpty)
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircularProgressIndicator(),
                    ],
                  )
                : Expanded(
                    child: PostCard(),
                  )
          ],
        ),
      ),
      bottomNavigationBar: NavBar(),
    );
  }
}
