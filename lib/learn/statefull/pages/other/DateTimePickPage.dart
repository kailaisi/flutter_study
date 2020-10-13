import 'package:flutter/material.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';

//第三方的时间选择器
class DateTimePickPubPage extends StatefulWidget {
  DateTimePickPubPage({Key key}) : super(key: key);

  @override
  _DateTimePickPubPageState createState() => _DateTimePickPubPageState();
}

const String MIN_DATETIME = '2020-05-15 09:23:10';
const String MAX_DATETIME = '2021-06-03 21:11:00';
const String INIT_DATETIME = '2019-05-16 09:00:00';

class _DateTimePickPubPageState extends State<DateTimePickPubPage> {
  DateTime _dateTime;
  String _format = 'yy年M月d日    EEE,H时:m分';

  /// Display time picker.
  void _showDateTimePicker() {
    DatePicker.showDatePicker(
      context,
      minDateTime: DateTime.parse(MIN_DATETIME),
      maxDateTime: DateTime.parse(MAX_DATETIME),
      initialDateTime: _dateTime,
      dateFormat: _format,
      pickerTheme: DateTimePickerTheme(
        showTitle: true,
      ),
      pickerMode: DateTimePickerMode.datetime, // show TimePicker
      onCancel: () {
        debugPrint('onCancel');
      },
      onConfirm: (dateTime, List<int> index) {
        setState(() {
          _dateTime = dateTime;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("时间选择器"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Center(
          child: InkWell(
            onTap: _showDateTimePicker,
            child: Text("${_dateTime}"),
          ),
        ),
      ),
    );
  }
}
