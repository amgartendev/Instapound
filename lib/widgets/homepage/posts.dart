import 'package:flutter/material.dart';
import 'package:instapound/posts_list.dart';
import 'package:instapound/widgets/homepage/interaction_button.dart';

class Posts extends StatelessWidget {
  const Posts({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: postsList.map((post) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 5,
          children: [
            // Profile
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    spacing: 10,
                    children: [
                      // Profile picture
                      CircleAvatar(
                        backgroundImage: AssetImage(post['profile_picture']),
                      ),

                      // Post info
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            post['username'],
                            style: const TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),

                          Text(
                            post['date'],
                            style: const TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),

                  // Actions
                  Row(
                    children: [
                      // Follow button
                      SizedBox(
                        height: 25,
                        child: ElevatedButton(
                          onPressed: () => (),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white60,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusGeometry.circular(5),
                            ),
                          ),
                          child: const Text(
                            'Follow',
                            style: TextStyle(color: Colors.black, fontSize: 12),
                          ),
                        ),
                      ),

                      // More action button
                      IconButton(
                        onPressed: () => (),
                        icon: const Icon(Icons.more_horiz, size: 20),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Post
            AspectRatio(aspectRatio: 3 / 4, child: Image.asset(post['image'])),

            // Post interaction
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Like, comment, repost and share
                  Row(
                    spacing: 10,
                    children: [
                      InteractionButton(
                        icon: Icons.favorite_border_rounded,
                        text: "${post['likes']}",
                      ),

                      InteractionButton(
                        icon: Icons.chat_bubble_outline_rounded,
                        text: "${post['comments']}",
                      ),

                      InteractionButton(
                        icon: Icons.repeat_rounded,
                        text: "${post['reposts']}",
                      ),

                      InteractionButton(
                        icon: Icons.send_rounded,
                        text: "${post['shares']}",
                      ),
                    ],
                  ),

                  // Bookmark
                  const Icon(Icons.bookmark_border),
                ],
              ),
            ),

            // Liked by
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text.rich(
                TextSpan(
                  children: [
                    const TextSpan(text: 'Liked by '),

                    TextSpan(
                      text: "${post['liked_by']} ",
                      style: const TextStyle(fontWeight: FontWeight.w600),
                    ),

                    const TextSpan(text: 'and '),

                    const TextSpan(
                      text: 'others',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ),

            // Post content
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '${post['username']} ',
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),

                    TextSpan(
                      text: post['description'],
                      style: const TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 15),
          ],
        );
      }).toList(),
    );
  }
}
