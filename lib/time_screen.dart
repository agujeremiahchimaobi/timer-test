import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TimeScreen extends StatefulWidget {
  const TimeScreen({Key? key}) : super(key: key);

  @override
  State<TimeScreen> createState() => _TimeScreenState();
}

class _TimeScreenState extends State<TimeScreen> {
  final List items = [
    '2 hours',
    '4 hours',
    '6 hours',
    '8 hours',
    '10 hours',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'STUDEASY',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 60.0),
              const Text('How long Do you Want To Study For?',
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  maxLines: 3),
              const SizedBox(height: 20.0),
              const Text(
                'Set your target study hours for today. you will be \nprompted at several intervals.',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              SizedBox(
                height: 350,
                child: CupertinoPicker(
                  itemExtent: 64,
                  onSelectedItemChanged: (index) {},
                  selectionOverlay: Container(),
                  children: items
                      .map(
                        (item) => Text(
                          item,
                          style: const TextStyle(fontSize: 30),
                        ),
                      )
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black,
        child: const Text('Next'),
      ),
    );
  }
}
