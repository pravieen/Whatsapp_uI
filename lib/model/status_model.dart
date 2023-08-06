import 'package:flutter/material.dart';

class statusModel {
  final String name;

  final String pic;
  final String msg;
   

  statusModel(this.name, this.pic, this.msg, );
}

List<statusModel> statusdata = [
  statusModel("madhu", 'https://randomuser.me/api/portraits/women/0.jpg', '9 min ago'),
  statusModel("kavin", 'https://randomuser.me/api/portraits/men/1.jpg', '9 min ago'),
  statusModel("darshan", 'https://randomuser.me/api/portraits/men/2.jpg', '9 min ago'),
  statusModel("raj", 'https://randomuser.me/api/portraits/men/3.jpg', '9 min ago'),
  statusModel("kama", 'https://randomuser.me/api/portraits/men/4.jpg', '9 min ago'),
  statusModel("mariya", 'https://randomuser.me/api/portraits/men/5.jpg', '9 min ago'),
];
