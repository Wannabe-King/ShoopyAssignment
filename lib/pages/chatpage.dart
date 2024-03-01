import 'package:flutter/material.dart';
import 'package:shoopyassignment/components/customcard.dart';
import 'package:shoopyassignment/model/chatmodel.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {

  List<ChatModel> chats=[
          ChatModel(name: "Priyanshu", time: "18:64", currentMessage: "Hello"),
          ChatModel(name: "Sidar", time: "18:64", currentMessage: "Hello"),
          ChatModel(name: "Ankita", time: "18:64", currentMessage: "Hello"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: chats.length,
          itemBuilder: (context, index) {
            return CustomCard(chatModel: chats[index],);
          },
        ),
      );
  }
}