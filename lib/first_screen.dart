import 'package:flutter/material.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

import 'listview.dart';

class FirstScreen extends StatefulWidget {
  static const String id = 'first_screen';
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'First Screen',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontStyle: FontStyle.italic,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text(
                    'DEVELOPER.............',
                  ),
                ),
              );
            },
            icon: const Icon(
              Icons.person,
              size: 32,
            ),
          ),
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text(
                    'SEARCHING.............',
                  ),
                ),
              );
            },
            icon: const Icon(
              Icons.search,
              size: 32,
            ),
          ),
        ],
      ),
      body: firstScreen(),
      drawer: myDrawer(),
      bottomNavigationBar: myBottomNavigationBar(),
    );
  }

  Widget firstScreen() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/naxir.jpg',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: SizedBox(
          height: 60,
          width: 200,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MylistView(title: 'asdasfsdfsd'),
                ),
              );
            },
            style: ButtonStyle(
              shadowColor: MaterialStateProperty.all(
                Colors.orange,
              ),
              backgroundColor: MaterialStateProperty.all(
                Colors.orange[900],
              ),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            child: WidgetAnimator(
              atRestEffect: WidgetRestingEffects.wave(
                duration: const Duration(
                  seconds: 5,
                ),
              ),
              child: const Text(
                'First Screen',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget myDrawer() {
    return Drawer(
      child: Column(
        children: [
          Container(
            color: Colors.black,
            child: const DrawerHeader(
              child: Center(
                child: Text(
                  'Drawer Header',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 30,
            ),
            child: ListTile(
              leading: CircleAvatar(
                //  backgroundColor: Colors.orange,
                radius: 20,
                foregroundImage: AssetImage(
                  'assets/images/jagu.jpg',
                ),
                // child: Icon(Icons.person),
              ),
              title: Text(
                'Name : ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Text(
                'Imran Nazeer',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 30,
            ),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.red,
                radius: 20,
                child: Icon(Icons.email),
              ),
              title: Text(
                'imrannazeer2015804@gmail.com',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Text(
                '',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 30,
            ),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 20,
                // backgroundImage: AssetImage(
                //   'assets/images/img.jpg',
                // ),
                child: Icon(Icons.password),
              ),
              title: Text(
                'Password : ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Text(
                'jagu@804',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget myBottomNavigationBar() {
    return SizedBox(
      height: 70,
      child: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              Icons.camera,
              size: 32,
            ),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              Icons.chat,
              size: 32,
            ),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              Icons.group,
              size: 32,
            ),
            label: 'Groups',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              Icons.stacked_bar_chart,
              size: 32,
            ),
            label: 'Status',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              Icons.call,
              size: 32,
            ),
            label: 'Calls',
          ),
        ],
      ),
    );
  }
}
