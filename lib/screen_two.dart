import 'package:flutter/material.dart';


class Screentwo extends StatefulWidget {
  static const String id = 'screen_two' ;
  const Screentwo({super.key});

  @override
  State<Screentwo> createState() => _ScreentwoState();
}

class _ScreentwoState extends State<Screentwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Navigation Drawer')),
        backgroundColor: Colors.pink,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 100,
                itemBuilder: (context, index){
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(''),
                    ),
                    title: Text('Imran Khan'),
                    onTap: (){
                      Navigator.pushNamed(context, Screentwo.id);
                    },
                  );
                }),
          )
        ],
      ),
    );
  }
}
