import 'package:flutter/material.dart';

class EventInformationListTile extends StatelessWidget {
  final String day;
  final int hour;
  final String content;
  final int version;

  EventInformationListTile(
      {required this.day,
      required this.hour,
      required this.content,
      required this.version});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      child: Column(
        children: <Widget>[
          Text('【日付】 ${day}'),
          Text('【時間】 ${hour}'),
          Text('【内容】 ${content}'),
          Text('【Ver】 ${version}')
        ],
      ),
    );
  }
}
