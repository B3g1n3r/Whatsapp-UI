import 'package:flutter/material.dart';

SingleChildScrollView callsView() {
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
              'Recent updates',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {},
              child: ListTile(
                leading: Container(
                  height: 56,
                  width: 56,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('assets/avatar.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
                title: const Text('User Name'), // Add a title for the ListTile
              ),
            );
          },
        )
      ],
    ),
  );
}
