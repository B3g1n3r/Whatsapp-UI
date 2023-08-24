import 'package:flutter/material.dart';

void main() => runApp(const Whatsapp());

class Whatsapp extends StatelessWidget {
  const Whatsapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TabBarExample(),
    );
  }
}

class TabBarExample extends StatefulWidget {
  const TabBarExample({super.key});

  @override
  State<TabBarExample> createState() => _TabBarExampleState();
}

class _TabBarExampleState extends State<TabBarExample>
    with TickerProviderStateMixin {
  late final TabController _tabcontroller;

  @override
  void initState() {
    super.initState();
    _tabcontroller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabcontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Color appbar = const Color(0xFF128C7E);
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
      'Swati',
      'Sachin',
      'Priya',
      'Vivek',
      'Divya',
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbar,
        toolbarHeight: 70,
        title: const Text('WhatsApp'),
        actions: const [
          Icon(Icons.camera_alt_outlined),
          SizedBox(width: 20),
          Icon(Icons.search),
          SizedBox(width: 20),
          Icon(Icons.more_vert),
          SizedBox(width: 20),
        ],
        bottom: TabBar(
          controller: _tabcontroller,
          tabs: const <Widget>[
            Tab(
              child: Text(
                'Chat',
                style: TextStyle(fontSize: 17),
              ),
            ),
            Tab(
              child: Text(
                'Status',
                style: TextStyle(fontSize: 17),
              ),
            ),
            Tab(
              child: Text(
                'Calls',
                style: TextStyle(fontSize: 17),
              ),
            ),
          ],
          indicator: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.white,
                width: 3,
              ),
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabcontroller,
        children: [
          chatView(items),
          const Center(child: Text('Tab 2 content')),
          const Center(child: Text('Tab 3 content')),
        ],
      ),
    );
  }

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
          'Wishing you a fantastic day!',
          'Sending you positive vibes!',
          'Let\'s catch up soon!',
          'Thinking of you.',
          'Hope we can meet up soon!',
        ];
        return ListTile(
          leading: Container(
            width: 56,
            height: 56,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/avatar.jpg'
                ),
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
        );
      },
    );
  }
}
