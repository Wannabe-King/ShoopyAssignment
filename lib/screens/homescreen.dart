import 'package:flutter/material.dart';
import 'package:shoopyassignment/pages/chatpage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoopyassignment/bloc/chat_bloc.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  late ChatBloc _chatBloc;

  @override
  void initState() {
    super.initState();
    _chatBloc = ChatBloc(); 
  }


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _chatBloc,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Whatsapp Clone"),
          backgroundColor: Color(0xFF075E54),
          foregroundColor: Color.fromARGB(255, 216, 238, 235),
        ),
        body: ChatPage(),
      ),
    );
  }
}
