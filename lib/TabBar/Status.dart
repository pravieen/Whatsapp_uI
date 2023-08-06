import 'package:flutter/material.dart';
import 'package:whatapp_clon/model/status_model.dart';

class Status extends StatefulWidget {
  const Status({super.key});

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: ListTile(
                leading: Container(
                  width: 50,
                  child: Stack(
                    children: [
                      ClipOval(
                        child: Image.network(
                          'https://randomuser.me/api/portraits/men/0.jpg',
                          width: 50,
                          height: 50,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 20,
                            )),
                      )
                    ],
                  ),
                ),
                title: const Text(
                  'My Status',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: const Text(
                  'Tab to add Status Update',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            )
          ],
        ),
        Container(
          padding: const EdgeInsets.all(5),
          width: double.infinity,
          height: 30,
          color: Colors.grey,
          child: Text("Recent",
              style: TextStyle(
                  color: Colors.grey[800], fontWeight: FontWeight.bold)),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: statusdata.length,
            itemBuilder: (context, i) => Column(children: [
              const SizedBox(height: 20),
              ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey,
                    backgroundImage: NetworkImage(statusdata[i].pic),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(statusdata[i].name,
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  subtitle: Text(
                    statusdata[i].msg,
                  )),
            ]),
          ),
        ),
      ],
    );
  }
}
