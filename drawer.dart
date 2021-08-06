import 'package:flutter/material.dart';
import 'package:cust_multi_child_layout_widget/screen1.dart';
import 'package:cust_multi_child_layout_widget/screen2.dart';

const customTileStyle =
    TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20);

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Center(
                  child: Icon(
                Icons.people,
                size: 100,
                color: Colors.amberAccent,
              )),
            ),
            ListTile(
              title: Text(
                'Screen 1',
                style: customTileStyle,
              ),
              tileColor: Colors.black87,
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Screen1()));
              },
            ),
            ListTile(
              title: Text('Screen 2', style: customTileStyle),
              tileColor: Colors.black87,
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Screen2()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
