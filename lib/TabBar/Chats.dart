import 'package:flutter/material.dart';
import 'package:whatapp_clon/model/chat_model.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: ChatsData.length,
      itemBuilder: (context, i) => Column(
        children: [
          const SizedBox(height: 20),
          // const Divider(
          //   height: 0.1,
          // ),
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(ChatsData[i].pic),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(ChatsData[i].name,
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                Text(ChatsData[i].time, style: const TextStyle(fontSize: 14)),
              ],
            ),
            subtitle: Text(ChatsData[i].msg,
                style: TextStyle(fontSize: 14, color: Colors.grey[650])),
          ),
        ],
      ),
    );
  }
}
