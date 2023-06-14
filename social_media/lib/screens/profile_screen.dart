import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.blue, width: 4.0, style: BorderStyle.solid),
                shape: BoxShape.circle),
            // width: 20,
            height: 200,
            child: const Icon(
              Icons.person,
              size: 150,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            height: 70,
            child: Column(
              children: [
                Text(
                  "Name",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
                ),
                Text(
                  "email",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      color: Colors.black45),
                ),
              ],
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.bookmark_border_outlined,
              color: Colors.black,
            ),
            title: Text("Saved",
                style: TextStyle(color: Colors.black, fontSize: 16)),
          ),
          const Divider(),
          const ListTile(
            leading: Icon(
              Icons.phone_in_talk_outlined,
              color: Colors.black,
            ),
            title: Text("Contact Us",
                style: TextStyle(color: Colors.black, fontSize: 16)),
          ),
          const Divider(),
          const ListTile(
            leading: Icon(
              Icons.privacy_tip_outlined,
              color: Colors.black,
            ),
            title: Text("Privacy policy",
                style: TextStyle(color: Colors.black, fontSize: 16)),
          ),
          const Divider(),
          const ListTile(
            leading: Icon(
              Icons.assignment_rounded,
              color: Colors.black,
            ),
            title: Text("Terms and Conditons",
                style: TextStyle(color: Colors.black, fontSize: 16)),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(
              Icons.logout_outlined,
              color: Colors.black,
            ),
            title: const Text("Logout",
                style: TextStyle(color: Colors.black, fontSize: 16)),
            onTap: () {
              Navigator.pushNamed(context, '/login');
            },
          ),
        ],
      ),
    );
  }
}
