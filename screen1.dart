import 'package:cust_multi_child_layout_widget/drawer.dart';
import 'package:flutter/material.dart';

void main() => runApp(Screen1());

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Page 1',
      home: Screen(),
    );
  }
}

class Screen extends StatefulWidget {
  Screen({Key key}) : super(key: key);

  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          title: Text('Final Ass'),
          backgroundColor: Colors.green,
        ),
        body: Column(children: []));
  }
}
