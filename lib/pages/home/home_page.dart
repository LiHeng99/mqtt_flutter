import 'package:flutter/material.dart';
import 'package:mqtt/widgets/post_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('首页'),
      // ),
      body: ListView.builder(
        itemCount: posts.length, // Assuming 'posts' is your data array
        itemBuilder: (context, index) {
          return PostCard(
            title: posts[index].title,
            author: posts[index].author,
            content: posts[index].content,
            views: posts[index].views,
            onDelete: () {
              // Handle delete action here
              print('Delete post at index: $index');
            },
          );
        },
      ),
    );
  }
}

class Post {
  final String title;
  final String author;
  final String content;
  final int views;

  const Post({
    required this.title,
    required this.author,
    required this.content,
    required this.views,
  });
}

List<Post> posts = const [
  Post(
    title: 'Post 1',
    author: 'Author 1',
    content: 'This is the content of post 1.',
    views: 100,
  ),
  Post(
    title: 'Post 2',
    author: 'Author 2',
    content: 'This is the content of post 2.',
    views: 200,
  ),
  Post(
    title: 'Post 3',
    author: 'Author 3',
    content: 'This is the content of post 3.',
    views: 300,
  ),
  Post(
    title: 'Post 3',
    author: 'Author 3',
    content: 'This is the content of post 3.',
    views: 300,
  )
  // Add more posts...
];
