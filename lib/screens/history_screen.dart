import 'package:flutter/material.dart';
import 'package:weight_tracker_getx_package/widgets/record_list_tile.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('History'),centerTitle: true,),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          RecordlistTile(),
          RecordlistTile(),
          RecordlistTile(),
          RecordlistTile(),
          RecordlistTile(),
          RecordlistTile(),
          RecordlistTile(),
          RecordlistTile(),
          RecordlistTile(),
          RecordlistTile(),
          RecordlistTile(),
          RecordlistTile(),
          RecordlistTile(),
          RecordlistTile(),
          RecordlistTile(),
        ],
      ),
    );
  }
}
