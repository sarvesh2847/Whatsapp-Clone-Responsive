import 'package:firstapp/colors.dart';
import 'package:firstapp/info.dart';
import 'package:firstapp/widgets/chatlist.dart';
import 'package:flutter/material.dart';

class Mobilechatscreen extends StatelessWidget {
  const Mobilechatscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(info[0]['name'].toString()),
        centerTitle: false,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.video_call)),
          IconButton(onPressed: () {}, icon: Icon(Icons.call)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
      ),
      body: Column(
        children: [
          //Chatlist
          Expanded(
            child: Chatlist(),
          ),
          TextField(
            decoration: InputDecoration(
                filled: true,
                fillColor: mobileChatBoxColor,
                prefixIcon: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Icon(
                    Icons.emoji_emotions,
                    color: Colors.grey,
                  ),
                ),
                suffixIcon: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.camera_alt,
                          color: Colors.grey,
                        ),
                        Icon(
                          Icons.attach_file_outlined,
                          color: Colors.grey,
                        ),
                        Icon(
                          Icons.money,
                          color: Colors.grey,
                        ),
                      ],
                    )),
                hintText: 'Type a message ',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                contentPadding: const EdgeInsets.all(10)),
          )
          //textinput
        ],
      ),
    );
  }
}
