import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/posts.dart';
import '../models/users.dart';

class PostCard extends StatelessWidget {
  const PostCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(bottom: 25.0),
      itemCount: UserModel.user.length,
      itemBuilder: (context, index) {
        Users user = UserModel.user[index];
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (Posts post in user.posts)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(
                      CupertinoIcons.person_crop_circle,
                      size: 30,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          user.name,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 1.2,
                          child: Text(
                            post.caption,
                            style:
                                TextStyle(color: Colors.black54, fontSize: 16),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 220,
                          width: 320,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                post.image,
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                10,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        const SizedBox(
                          width: 320,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(CupertinoIcons.suit_heart),
                              Text("Like"),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(CupertinoIcons.captions_bubble),
                              Text("Comment"),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(CupertinoIcons.bookmark),
                              Text("Save"),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(CupertinoIcons.arrowshape_turn_up_right),
                              Text("Share"),
                            ],
                          ),
                        ),
                        Divider(),
                      ],
                    ),
                  ],
                ),
              )
          ],
        );
      },
    );
  }
}
