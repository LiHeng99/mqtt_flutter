import 'package:flutter/material.dart';
import 'package:mqtt/models/message_chat.dart';

class ChatPage extends StatefulWidget {
  final String appBarTitle;

  ChatPage({Key? key, required this.appBarTitle}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.appBarTitle,
          textAlign: TextAlign.center,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              reverse: true, // reverse the order of messages
              itemCount: messageList.length,
              itemBuilder: (context, index) {
                final message = messageList[index];
                return Row(
                  children: <Widget>[
                    DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                      ),
                      child: SizedBox(
                        width: 50,
                        height: 50,
                        child: Center(
                            child:
                                Text(message.userName)), // center the username
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.grey[300],
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(message.message),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
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

List<MessageChat> messageList = const [
  //生成20条MessageChat对象数据
  MessageChat(
    userName: '李白',
    message:
        '青青陵上柏,磊磊涧中石,人生天地间,忽如远行客,斗酒相娱乐,聊厚不为薄,驱车策驽马,游戏宛与洛,洛中何郁郁,冠带自相索,长衢罗夹巷,王侯多第宅,两宫遥相望,双阙百余尺,极宴娱心意,戚戚何所迫,何缘共此游,盛筵常数十,松竹百年老,人生在世间,吾宗与子同,李白,陋室铭,李白,',
    time: '2019',
  ),
  MessageChat(
    userName: '杜甫',
    message:
        '安得广厦千万间,大庇天下寒士俱欢颜,风雨不动安如山,呜呼,何时眼前突兀见此屋,吾庐独破受冻死亦足,村生今已无冻死者,老翁不复识耕田者,空余池塘水,冻结在庭树,杜甫,茅屋为秋风所破歌,杜甫,',
    time: '2019',
  ),
  MessageChat(
    userName: '李白',
    message:
        '青青陵上柏,磊磊涧中石,人生天地间,忽如远行客,斗酒相娱乐,聊厚不为薄,驱车策驽马,游戏宛与洛,洛中何郁郁,冠带自相索,长衢罗夹巷,王侯多第宅,两宫遥相望,双阙百余尺,极宴娱心意,戚戚何所迫,何缘共此游,盛筵常数十,松竹百年老,人生在世间,吾宗与子同,李白,陋室铭,李白,',
    time: '2019',
  ),
  MessageChat(
    userName: '杜甫',
    message:
        '安得广厦千万间,大庇天下寒士俱欢颜,风雨不动安如山,呜呼,何时眼前突兀见此屋,吾庐独破受冻死亦足,村生今已无冻死者,老翁不复识耕田者,空余池塘水,冻结在庭树,杜甫,茅屋为秋风所破歌,杜甫,',
    time: '2019',
  ),

  MessageChat(
    userName: '杜甫',
    message:
        '安得广厦千万间,大庇天下寒士俱欢颜,风雨不动安如山,呜呼,何时眼前突兀见此屋,吾庐独破受冻死亦足,村生今已无冻死者,老翁不复识耕田者,空余池塘水,冻结在庭树,杜甫,茅屋为秋风所破歌,杜甫,',
    time: '2019',
  ),
];
