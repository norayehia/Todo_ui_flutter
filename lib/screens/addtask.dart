import 'package:flutter/material.dart';

class AddTask extends StatefulWidget {
  const AddTask({Key? key}) : super(key: key);

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back_ios, size: 50)),
            SizedBox(
              height: 30,
            ),
            Text(
              'Add your task now ^-^',
              style: TextStyle(
                  color: Colors.pinkAccent, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 29,
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'enter your task here ',
                labelText: 'Taskname',
              ),
            ),
            SizedBox(
              height: 29,
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'enter your date here ',
                labelText: 'Date',
              ),
            ),
            SizedBox(
              height: 29,
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'enter your priorty here ',
                labelText: 'priorty',
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Center(
                  child: Text(
                'Add task',
                style: TextStyle(color: Colors.white),
              )),
              width: 100,
              height: 30,
              decoration: BoxDecoration(
                  color: Colors.pinkAccent,
                  borderRadius: BorderRadius.all(Radius.circular(80))),
            ),
          ],
        ),
      )),
    );
  }
}
