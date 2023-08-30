import 'package:flutter/material.dart';
import 'package:status_view/status_view.dart';
import 'dart:math';

SingleChildScrollView statusView() {
  List<String> timeList = [
    '08:00 AM',
    '09:15 AM',
    '10:30 AM',
    '11:45 AM',
    '12:00 PM',
    '01:30 PM',
    '02:45 PM',
    '03:00 PM',
    '04:15 PM',
    '05:30 PM',
    '06:45 PM',
    '07:00 PM',
    '08:15 PM',
    '09:30 PM',
    '10:45 PM',
  ];
  List<String> items = [
    'Aarav',
    'Sanya',
    'Vikram',
    'Meera',
    'Arjun',
    'Ananya',
    'Rahul',
    'Kavya',
    'Amit',
    'Isha',
    'Ravi',
    'Pooja',
    'Aryan',
    'Neha',
    'Rajesh',
  ];
  Random random = Random();
  int min = 1;
  int max = 5;

  return SingleChildScrollView(
    child: Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        ListTile(
          leading: Stack(
            children: [
              Container(
                height: 56,
                width: 56,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black,
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  height: 56,
                  width: 56,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/12.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 25,
                          width: 25,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF25D366),
                          ),
                          child: const Icon(
                            Icons.add,
                            size: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          title: const Text('My Status'),
          subtitle: const Text('Tab to add status'),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment(-0.88, 0),
            child: Text(
              'Recent updates',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(), 
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {},
              child: ListTile(
                leading: StatusView(
                  radius: 30,
                  spacing: 10,
                  strokeWidth: 2,
                  numberOfStatus: min + random.nextInt(max - min + 1),
                  padding: 4,
                  centerImageUrl: "https://picsum.photos/200/300",
                  unSeenColor: const Color(0xFF25D366),
                ),
                title: Text(items[index]),
                subtitle: Text(timeList[index]),
              ),
            );
          },
        ),
      ],
    ),
  );
}
