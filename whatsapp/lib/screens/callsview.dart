import 'package:flutter/material.dart';

SingleChildScrollView callsView() {
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
  ];
  List<String> dateAndTimeList = [
    '28 August, 14:46',
    '15 September, 09:30',
    '10 October, 18:15',
    '05 November, 12:00',
    '20 December, 22:00',
    '02 January, 08:45',
    '11 February, 16:30',
    '25 March, 05:20',
    '09 April, 19:55',
    '30 May, 11:10',
  ];

  return SingleChildScrollView(
    child: Column(
      children: [
        const SizedBox(height: 10),
        ListTile(
          leading: Stack(
            children: [
              Container(
                height: 56,
                width: 56,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFF25D366),
                ),
                child: Center(
                  child: Transform.rotate(
                    angle: 2.5,
                    child: const Icon(
                      Icons.link,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
              ),
            ],
          ),
          title: const Text('Create call link'),
          subtitle: const Text('Share a link for you WhatsApp call'),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment(-0.88, 0),
            child: Text(
              'Recent',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
        ListView.builder(
            itemCount: items.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: ((context, index) {
              return ListTile(
                leading: Container(
                  height: 56,
                  width: 56,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/avatar.jpg'))),
                ),
                title: Text(items[index]),
                subtitle: Row(
                  children: [
                    Transform.rotate(
                      angle: -0.7,
                      child: const Icon(
                        Icons.arrow_back,
                        size: 17,
                      ),
                    ),
                    Text(dateAndTimeList[index])
                  ],
                ),
                trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.phone,
                      color: Color(0xFF25D366),
                    )),
              );
            }))
      ],
    ),
  );
}
