import 'package:flutter/material.dart';

class AddTaskScreen extends StatefulWidget {
  final Function onTaskAdded;

  AddTaskScreen({this.onTaskAdded});

  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  String newTaskTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 30.0,
          horizontal: 35.0,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newValue) {
                newTaskTitle = newValue;
              },
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              child: FlatButton(
                child: Text('Add'),
                textColor: Colors.white,
                color: Colors.lightBlueAccent,
                splashColor: Colors.blueAccent,
                onPressed: () {
                  widget.onTaskAdded(newTaskTitle);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
