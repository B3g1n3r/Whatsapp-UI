import 'package:flutter/material.dart';

ListView chatView(List<String> items) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        
        List<String> messages = [
          'Hi, how are you?',
          'Hey there!',
          'Long time no see. How have you been?',
          'Just wanted to say hello!',
          'Hope you\'re having a great day!',
          'What\'s up?',
          'How\'s everything going?',
          'I heard some exciting news!',
          'Guess what happened today?',
          'Can you believe this weather?',
          'Did you see that movie?',
          'I have a funny story to tell you!',
          'I need your advice on something.',
          'I miss hanging out with you!',
          'Remember that time we went on an adventure?',
          
        ];
        return InkWell(
          onTap: () {},
          child: ListTile(
            leading: Container(
              width: 56,
              height: 56,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/avatar.jpg'),
                ),
              ),
            ),
            title: Text(
              items[index],
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Row(
              children: [
                const Icon(
                  Icons.done,
                  size: 18,
                  color: Colors.grey,
                ),
                Flexible(
                  child: Text(
                    messages[index],
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            trailing: Column(
              children: [
                const Text(
                  '12:07 PM',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                Container(
                  height: 20,
                  width: 20,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF25D366),
                  ),
                  child: const Center(
                      child: Text(
                    '1',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  )),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

