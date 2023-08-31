import 'package:flutter/material.dart';
import 'package:whatsapp/screens/callsview.dart';
import 'package:whatsapp/screens/statusview.dart';

void main() => runApp(const Whatsapp());

class Whatsapp extends StatelessWidget {
  const Whatsapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WhatsAppUI(),
    );
  }
}

class WhatsAppUI extends StatefulWidget {
  const WhatsAppUI({super.key});

  @override
  State<WhatsAppUI> createState() => _WhatsAppUIState();
}

enum SampleItem { one, two, three, four, five }

class _WhatsAppUIState extends State<WhatsAppUI> with TickerProviderStateMixin {
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
    const Color appbar = Color(0xFF128C7E);
    SampleItem? SelectedMenu;
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbar,
        toolbarHeight: 70,
        title: const Text('WhatsApp'),
        actions: [
          const Icon(Icons.camera_alt_outlined),
          const SizedBox(width: 20),
          const Icon(Icons.search),
          const SizedBox(width: 20),
          PopupMenuButton<SampleItem>(
              initialValue: SelectedMenu,
              onSelected: (SampleItem item) {
                setState(() {
                  SelectedMenu = item;
                });
              },
              itemBuilder: (BuildContext context) =>
                  <PopupMenuEntry<SampleItem>>[
                    const PopupMenuItem<SampleItem>(
                      value: SampleItem.one,
                      child: Text('New group'),
                    ),
                    const PopupMenuItem<SampleItem>(
                      value: SampleItem.two,
                      child: Text('New broadcast'),
                    ),
                    const PopupMenuItem<SampleItem>(
                      value: SampleItem.three,
                      child: Text('Linked devices'),
                    ),
                    const PopupMenuItem<SampleItem>(
                      value: SampleItem.four,
                      child: Text('Starred messages'),),
                                          const PopupMenuItem<SampleItem>(
                      value: SampleItem.four,
                      child: Text('Payments'),),
                                          const PopupMenuItem<SampleItem>(
                      value: SampleItem.four,
                      child: Text('settings'),),
                  ]),
          const SizedBox(width: 20),
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
          statusView(),
          callsView()
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
}
