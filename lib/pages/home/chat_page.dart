import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  final String appBarTitle; // add this
  ChatPage({required this.appBarTitle}); // and this
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          appBarTitle, // use it here
          textAlign: TextAlign.center,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    hintText: 'Type a message',
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.send),
                onPressed: () {
                  // TODO: Implement sending message
                  _controller.clear();
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
