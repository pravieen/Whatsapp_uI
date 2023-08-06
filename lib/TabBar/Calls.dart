import 'package:flutter/material.dart';
import 'package:whatapp_clon/model/call_model.dart';

class Calls extends StatefulWidget {
  const Calls({super.key});

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: calldata.length,
      itemBuilder: (context, i) => Column(
        children: [
          const SizedBox(height: 20),
          ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(calldata[i].pic),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(calldata[i].name,
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  Icon(i % 2 == 0 ? Icons.call : Icons.video_call,
                      color: Colors.green, size: 28)
                ],
              ),
              subtitle: Text(calldata[i].time)),
        ],
      ),
    );
  }
}
