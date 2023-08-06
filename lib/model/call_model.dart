import 'package:flutter/material.dart';

class CallModel {
  final String name;

  final String pic;
  final String time;
   

  CallModel(this.name, this.pic, this.time, );
}

List<CallModel> calldata = [
  CallModel(
      "pravieen", 'https://randomuser.me/api/portraits/men/0.jpg', '12:30 PM'),
  CallModel("vedash", 'https://randomuser.me/api/portraits/men/1.jpg', 'Today'),
  CallModel(
      "darshan", 'https://randomuser.me/api/portraits/men/2.jpg', 'Yesterday'),
  CallModel(
      "pravieen", 'https://randomuser.me/api/portraits/men/3.jpg', '4 Nov'),
  CallModel(
      "pravieen", 'https://randomuser.me/api/portraits/men/4.jpg', 'Today'),
  CallModel(
      "pravieen", 'https://randomuser.me/api/portraits/men/5.jpg', '5 Nov'),
];
