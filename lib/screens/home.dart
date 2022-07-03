// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'addtask.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //column(expanded(container+),)
      body: Column(children: [
        Expanded(
            flex: 3, //11
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.pinkAccent,
                //111colunminsde this then 2row(2icons,txt)row(column2txt,buttonincontainer,)inside that column
                child: Column(children: [
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.blur_on,
                        color: Colors.white,
                        size: 50,
                      ),
                      Text(
                        '3 january',
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                      Icon(
                        Icons.alarm_add,
                        color: Colors.white,
                        size: 50,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //secondrow
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Today',
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                          Text(
                            '5 feb',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ],
                      ),
                      //wrap container with gesture detector to make ontap addtask
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AddTask()),
                          );
                        },
                        child: Container(
                          child: Center(
                              child: Text(
                            'Add task',
                            style: TextStyle(color: Colors.pinkAccent),
                          )),
                          width: 80,
                          height: 30,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(80))),
                        ),
                      )
                    ],
                  )
                ]),
              ),
            )),
        //2 contaner child listview اول0row(etract outside>containertxtday,)
        Expanded(
            flex: 3,
            child: Container(
              child: ListView.builder(
                  itemCount: 7,
                  itemBuilder: (context, int index) {
                    if (index == 0) {
                      return Row(
                        children: [
                          daywidgt(
                            dayname: 'mon\n day',
                          ),
                          daywidgt(
                            dayname: 'sat\n day',
                          ),
                          daywidgt(
                            dayname: 'sun\n day',
                          ),
                          daywidgt(
                            dayname: 'wed\n day',
                          ),
                        ],
                      );
                    }
                    //outside if column( every row in it txt,checkbox don)
                    return Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'first task',
                                  style: TextStyle(
                                      color: Colors.pinkAccent, fontSize: 40),
                                ),
                                Text(
                                  'ontime',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 15),
                                )
                              ],
                            ),
                            Checkbox(
                              checkColor: Colors.white,
                              //fillColor: Colors.pinkAccent;
                              value: isChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    );
                  }),
              decoration: BoxDecoration(
                  color: Colors.white10,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(70))),
            )),
      ]),
    );
  }
}

class daywidgt extends StatelessWidget {
  final String dayname;
  const daywidgt({
    Key? key,
    required this.dayname,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 70,
        width: 70,
        child: Center(
            child: Text(
          dayname,
          style: TextStyle(color: Colors.white),
        )),
        decoration: BoxDecoration(
            color: Colors.pinkAccent,
            borderRadius: BorderRadius.all(Radius.circular(10))),
      ),
    );
  }
}
