import 'dart:convert';

class Posts {
  final int id;
  final String caption;
  final String image;

  Posts({
    required this.id,
    required this.caption,
    required this.image,
  });

  factory Posts.fromJson(Map<String, dynamic> json) {
    return Posts(
      id: json['id'],
      caption: json['caption'],
      image: json['image'],
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'caption': caption,
      'image': image,
    };
  }

  factory Posts.fromMap(Map<String, dynamic> map) {
    return Posts(
      id: map['id'] as int,
      caption: map['caption'] as String,
      image: map['image'] as String,
    );
  }

  String toJson() => json.encode(toMap());
}
