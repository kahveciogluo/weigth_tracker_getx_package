import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:weight_tracker_getx_package/models/record.dart';
import 'package:weight_tracker_getx_package/screen-models/controller.dart';

class RecordlistTile extends StatelessWidget {
  final Record record ;
  RecordlistTile({Key? key, required this.record}) : super(key: key);
  final Controller _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
        child: ListTile(
          leading:_buildDate(),
          title: _buildWeight(),
          trailing: _buildIcons(),
        ),
      ),
    );
  }

  Text _buildDate() => Text((DateFormat('EEE, MMM d, ''yy').format(record.dateTime).toString()));

  Center _buildWeight() => Center(child: Text(record.weigth.toString(), style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),));

  Row _buildIcons() {
    return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(icon: Icon(Icons.edit), color: Colors.black54, onPressed: (){},),
            IconButton(icon: Icon(Icons.delete), color: Colors.redAccent, onPressed: (){ _controller.deleteRecord(record);}),
          ],
        );
  }
}
