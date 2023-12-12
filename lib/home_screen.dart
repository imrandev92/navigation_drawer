import 'package:flutter/material.dart';
import 'package:untitled15/screen_two.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Navigation Drawer')),
        backgroundColor: Colors.pink,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.pink,
              ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(''),
                ),
                accountName: Text('Imran Dev'),
                accountEmail: Text('M.imranrehmani92@gmail.com'),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Page 1'),
              onTap: (){
                Navigator.pushNamed(context, HomeScreen.id);
              },
            ),
            ListTile(
              leading: Icon(Icons.calculate),
              title: Text('Page 2'),
              onTap: (){
                Navigator.pushNamed(context, Screentwo.id);
              },
            ),
            ListTile(
              leading: Icon(Icons.logout_outlined),
              title: Text('Log Out'),
              onTap: (){
                Navigator.pushNamed(context, HomeScreen.id);
              },
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, Screentwo.id);
                // Navigator.push(
                //     context, MaterialPageRoute(builder: (context) => HomeScreen()),
                // );
              },
              child: Text('Screen 1'),
            ),
          ),
        ],
      ),
    );
  }
}
