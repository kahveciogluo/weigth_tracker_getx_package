import 'package:get/get.dart';
import 'package:weight_tracker_getx_package/models/record.dart';

class Controller extends GetxController{

  var records = <Record>[
   /* Record(weigth: 80, dateTime: DateTime.now(), note: 'Note beee'),
    Record(weigth: 60, dateTime: DateTime.now(),note: 'BBB'),
    Record(weigth: 30, dateTime: DateTime.now(),note: 'CCC'),
    Record(weigth: 50, dateTime: DateTime.now(),note: 'DDD'),*/

  ].obs ;

  void addRecord(){
    records.add(Record(weigth: 100, dateTime: DateTime.now(), note: 'New Record'));
  }

  void deleteRecord(Record record){
    records.remove(record);
  }

}