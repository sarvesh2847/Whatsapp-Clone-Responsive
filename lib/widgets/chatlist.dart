import 'package:firstapp/info.dart';
import 'package:firstapp/widgets/my_message_card.dart';
import 'package:firstapp/widgets/sender_message_card.dart';
import 'package:flutter/material.dart';

class Chatlist extends StatelessWidget {
  const Chatlist({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        if (messages[index]['isMe'] == true) {
          return Mymessagecard(
              message: messages[index]['text'].toString(),
              date: messages[index]['time'].toString());
        }
        return Sendermessagecard(
            message: messages[index]['text'].toString(),
            date: messages[index]['time'].toString());
      },
    );
  }
}
