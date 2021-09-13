import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class RecordlistTile extends StatelessWidget {
  const RecordlistTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
        child: ListTile(
          leading:Text((DateFormat('EEE, MMM d, ''yy').format(DateTime.now())).toString()),
          title: Center(child: Text('75', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),)),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(icon: Icon(Icons.edit), color: Colors.black54, onPressed: (){},),
              IconButton(icon: Icon(Icons.delete), color: Colors.redAccent, onPressed: (){},),
            ],
          ),
        ),
      ),
    );
  }
}
