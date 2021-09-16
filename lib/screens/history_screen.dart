import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weight_tracker_getx_package/screen-models/controller.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  final Controller _controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('History'),
        centerTitle: true,
      actions: [
        IconButton(icon: Icon(Icons.add),color: Colors.white,Chang
        onPressed: _controller.addRecord,
        ),
      ],),
      body: Obx(()=>ListView(
        physics: BouncingScrollPhysics(),
        children: [
          (_controller.records[0].note==null)? Text('Nothing'): Text(_controller.records[0].note!),
          Text(_controller.records.length.toString()),
        ],
      )),
    );
  }
}
