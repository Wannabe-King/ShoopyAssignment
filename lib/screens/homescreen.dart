import 'package:flutter/material.dart';
import 'package:shoopyassignment/pages/chatpage.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Whatsapp Clone"),
        backgroundColor: Color(0xFF075E54),
        foregroundColor: Color.fromARGB(255, 216, 238, 235),
      ),
      body: ChatPage(),
    );
  }
}

// class Homescreen extends StatefulWidget {
//   Homescreen({required Key key,required this.chatmodels,required this.sourchat}) : super(key: key);
//   final List<ChatModel> chatmodels;
//   final ChatModel sourchat;

//   @override
//   _HomescreenState createState() => _HomescreenState();
// }

// class _HomescreenState extends State<Homescreen>
//     with SingleTickerProviderStateMixin {

//   @override
//   Widget build(BuildContext context) {
//     return 
//   }
// }