import 'package:flutter/material.dart';

class Camera extends StatefulWidget {
  const Camera({super.key});

  @override
  State<Camera> createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Text(
        'Camera',
        style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
      )),
    );
  }
}
