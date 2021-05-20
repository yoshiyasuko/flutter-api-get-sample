import 'package:flutter/material.dart';
import 'package:flutter_api_get_sample/view/event_information_list_view.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: EventInformationListView(),
      builder: EasyLoading.init(),
    );
  }
}
