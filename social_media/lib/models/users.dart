import 'dart:convert';

import 'package:social_media/models/posts.dart';

class Users {
  int id;
  String name;
  String email;
  String password;
  List<Posts> posts;

  Users({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
    required this.posts,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'password': password,
      'posts': posts.map((post) => post.toMap()).toList(),
    };
  }

  factory Users.fromJson(Map<String, dynamic> json) {
    final List<dynamic> jsonPosts = json['posts'] ?? [];
    final posts = jsonPosts.map((post) => Posts.fromJson(post)).toList();

    return Users(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      password: json['password'],
      posts: posts,
    );
  }

  String toJson() => json.encode(toMap());

  static fromMap(user) {}
}

class UserModel {
  static List<Users> user = [];
}
