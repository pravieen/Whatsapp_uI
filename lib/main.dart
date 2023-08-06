import 'package:flutter/material.dart';
import 'TabBar/Chats.dart';
import 'TabBar/Camera.dart';
import 'TabBar/Calls.dart';
import 'TabBar/Status.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 4, vsync: this, initialIndex: 1)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WhatsApp'),
        backgroundColor: Color.fromARGB(255, 33, 100, 45),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Icon(Icons.camera),
            Text(
              'CHATS',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'STATUS',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'CALLS',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          Camera(),
          Chats(),
          Status(),
          Calls(),
        ],
      ),
      floatingActionButton: _tabController.index == 0
          ? FloatingActionButton(
              onPressed: () {},
              backgroundColor: const Color.fromARGB(255, 33, 100, 45),
              child: const Icon(
                Icons.camera,
                color: Colors.white,
              ))
          : _tabController.index == 1
              ? FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: const Color.fromARGB(255, 33, 100, 45),
                  child: const Icon(
                    Icons.message,
                    color: Colors.white,
                  ),
                )
              : _tabController.index == 2
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 45,
                          width: 45,
                          child: FloatingActionButton(
                            onPressed: () {},
                            backgroundColor: Color.fromARGB(255, 255, 255, 255),
                            child: const Icon(
                              Icons.edit,
                              color: Colors.blueGrey,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        FloatingActionButton(
                          onPressed: () {},
                          backgroundColor:
                              const Color.fromARGB(255, 33, 100, 45),
                          child: const Icon(
                            Icons.camera_alt,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )
                  : FloatingActionButton(
                      onPressed: () {},
                      backgroundColor: const Color.fromARGB(255, 33, 100, 45),
                      child: const Icon(
                        Icons.add_call,
                        color: Colors.white,
                      ),
                    ),
    );
  }
}
