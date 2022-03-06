import 'package:flutter/material.dart';
import 'package:tugas_codehouse2/pages/shop_page.dart';
import 'package:tugas_codehouse2/pages/home_page.dart';
import 'package:tugas_codehouse2/pages/news_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    ShopPage(),
    NewsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text(
          'Tugas Pertama',
          style: TextStyle(color: Colors.white),
        ),
        elevation: 0,
        actions: const [
          CircleAvatar(
            backgroundImage: NetworkImage(
                "https://content.icarcdn.com/styles/article_cover/s3/field/article/cover/2021/elon-musk-dalam-setelan-jas-2.gif?itok=CCANmsEG"),
          ),
          SizedBox(
            width: 15,
          )
        ],
      ),
      backgroundColor: const Color(
        0xFFECECEC,
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber,
        onTap: _onItemTapped,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.amber,
              ),
              child: Text(
                'CodeHouse',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Messages'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
    );
  }
}
