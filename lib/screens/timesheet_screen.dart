import 'package:flutter/material.dart';

class TimesheetScreen extends StatefulWidget {
  const TimesheetScreen({Key? key}) : super(key: key);

  @override
  State<TimesheetScreen> createState() => _TimesheetScreenState();
}

class _TimesheetScreenState extends State<TimesheetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        centerTitle: true,
        title: Text(
          'Employee Time Sheet',
        ),
      ),
      body: Container(
        color: Colors.blueGrey[300],
        child: Center(
          child: Text(
            'This is the timesheet page to track employee hours.',
          ),
        ),
      ),
    );
  }
}
