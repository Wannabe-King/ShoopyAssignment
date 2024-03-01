import 'package:flutter/material.dart';
import 'package:shoopyassignment/model/chatmodel.dart';
import 'package:shoopyassignment/screens/individualchatpage.dart';

class CustomCard extends StatelessWidget {
  final ChatModel chatModel;

  const CustomCard({
    super.key,
    required this.chatModel,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
        context,
        MaterialPageRoute(
            builder: (contex) => IndividualPage(
                  chatModel: chatModel,
                  // sourchat: sourchat,
                )));
      },
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.blueGrey,
              child: Icon(Icons.person),
            ),
            title: Text(
              chatModel.name,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Row(
              children: [
                Icon(Icons.done_all),
                SizedBox(
                  width: 3,
                ),
                Text(
                  chatModel.currentMessage,
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
              ],
            ),
            trailing: Text(chatModel.time),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 80),
            child: Divider(
              thickness: 1,
            ),
          ),
        ],
      ),
    );
  }
}
