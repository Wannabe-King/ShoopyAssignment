import 'package:flutter/material.dart';
import 'package:shoopyassignment/components/ownmessagecard.dart';
import 'package:shoopyassignment/components/reply.dart';
import 'package:shoopyassignment/model/chatmodel.dart';
import 'package:shoopyassignment/model/messagemodel.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoopyassignment/bloc/chat_bloc.dart';

class IndividualPage extends StatefulWidget {
  IndividualPage({super.key, required this.chatModel});
  final ChatModel chatModel;

  @override
  _IndividualPageState createState() => _IndividualPageState();
}

class _IndividualPageState extends State<IndividualPage> {


  late ChatBloc _chatBloc;

   @override
  void initState() {
    super.initState();
    _chatBloc = ChatBloc(); // Initialize ChatBloc in initState
  }


  //dummy data
  List<MessageModel> messages = [
    MessageModel(
      message: "Hello!",
      type: "source",
      time: "10:00 AM",
    ),
    MessageModel(
      message: "Hi there!",
      type: "reply",
      time: "10:05 AM",
    ),
    MessageModel(
      message: "How are you?",
      type: "source",
      time: "10:10 AM",
    ),
    MessageModel(
      message: "I'm good. Thanks!",
      type: "reply",
      time: "10:15 AM",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _chatBloc,
      child: BlocBuilder<ChatBloc, ChatState>(
        builder: (context, state){
    return Scaffold(
        backgroundColor: Colors.transparent,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: AppBar(
            backgroundColor: Color(0xFF075E54),
            foregroundColor: Color.fromARGB(255, 216, 238, 235),
            leadingWidth: 70,
            titleSpacing: 0,
            leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.arrow_back,
                    size: 24,
                  ),
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.blueGrey,
                    child: Icon(Icons.person),
                  ),
                ],
              ),
            ),
            title: InkWell(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.all(6),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.chatModel.name,
                      style: TextStyle(
                        fontSize: 18.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "last seen today at 12:05",
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Expanded(
                  // height: MediaQuery.of(context).size.height - 150,
                  child: ListView.builder(
                    shrinkWrap: true,
                    // controller: _scrollController,
                    itemCount: messages.length + 1,
                    itemBuilder: (context, index) {
                      if (index == messages.length) {
                        return Container(
                          height: 70,
                        );
                      }
                      if (messages[index].type == "source") {
                        return OwnMessageCard(
                          message: messages[index].message,
                          time: messages[index].time,
                        );
                      } else {
                        return ReplyCard(
                          message: messages[index].message,
                          time: messages[index].time,
                        );
                      }
                    },
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.sizeOf(context).width - 60,
                        child: Card(
                          margin:
                              EdgeInsets.only(left: 10, right: 10, bottom: 8),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                          child: TextFormField(
                            keyboardType: TextInputType.multiline,
                            maxLines: 5,
                            minLines: 1,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Type Your Message",
                                contentPadding: EdgeInsets.only(left: 20)),
                          ),
                        ),
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.only(left: 10, right: 10, bottom: 10),
                        child: CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 10, 139, 124),
                          child: Icon(Icons.send_outlined),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ))
            );},),
      );
        
  }
}
