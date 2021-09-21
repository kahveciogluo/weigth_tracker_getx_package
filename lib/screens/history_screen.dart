import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weight_tracker_getx_package/models/record.dart';
import 'package:weight_tracker_getx_package/screen-models/controller.dart';
import 'package:weight_tracker_getx_package/widgets/record_list_tile.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  final Controller _controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    List<Record> records = _controller.records ;

    return Obx(()=>Scaffold(
      appBar: AppBar(
        title: Text('History'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            color: Colors.white,
            onPressed: _controller.addRecord,
          ),
        ],
      ),
      body: records.isEmpty
          ? Center(child: Text('You have not weight record yet'))
          : ListView(
        physics: BouncingScrollPhysics(),
        children: records
            .map((record) => RecordlistTile(record: record))
            .toList(),
      ),
    ));
  }
}
