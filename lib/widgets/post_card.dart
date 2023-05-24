import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String title;
  final String author;
  final String content;
  final int views;
  final VoidCallback onDelete;

  const PostCard({
    Key? key,
    required this.title,
    required this.author,
    required this.content,
    required this.views,
    required this.onDelete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(title, style: Theme.of(context).textTheme.headline5),
            SizedBox(height: 8.0),
            Text('By $author', style: Theme.of(context).textTheme.subtitle1),
            SizedBox(height: 8.0),
            Text(content, maxLines: 3, overflow: TextOverflow.ellipsis),
            SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('$views views',
                    style: Theme.of(context).textTheme.caption),
                IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: onDelete,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
