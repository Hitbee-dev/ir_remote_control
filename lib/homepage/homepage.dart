import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Uniplatek',style: TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,fontSize: 24),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _onlypadding(50, 0, 0, 0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _button_layouts("ON", Colors.red, Icons.play_arrow, Colors.red),
                _onlypadding(0, 0, 25, 25),
                _button_layouts("OFF", Colors.red, Icons.stop_circle_outlined, Colors.red),
              ],
            ),
            _onlypadding(50, 0, 0, 0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _button_layouts("HIGH", Colors.grey, Icons.arrow_drop_up_outlined, Colors.grey),
                _onlypadding(0, 0, 25, 25),
                _button_layouts("LOW", Colors.grey, Icons.arrow_drop_down, Colors.grey)
              ],
            ),
            Builder(
                builder: (BuildContext context){
                return _InfoWidget(context);
              }
            ),
          ],
        ),
      ),
    );
  }

  Padding _onlypadding(double top, double bottom, double left, double right) {
    return Padding(padding: EdgeInsets.only(top: top, bottom: bottom, left: left, right: right));
  }

  IconButton _buttons(IconData icon, Color color) {
    return IconButton(
      iconSize: 100,
      icon: Icon(icon),
      color: color,
      onPressed: (){
        setState(() {
          
        });
      },
    );
  }

  Column _button_layouts(String text, Color color, IconData icon, Color icon_color) {
    return Column(
      children: [
        Text(text, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20, color: color), ),
        _buttons(icon, icon_color),
      ],
    );
  }

  Widget _InfoWidget(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
      child: Card(
        elevation: 6,
        child: Column(
          children: <Widget>[
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Icon(Icons.menu_book, size: 20, color: Colors.black87),
                  Text(
                    '  사용안내',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.more_vert, size: 18, color: Colors.black87),
                ],
              ),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 9),
              decoration: BoxDecoration(
                color: Colors.amber[300],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4), topRight: Radius.circular(4)),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30, bottom: 10),
              child: Column(
                children: <Widget>[
                  SizedBox(
                      height: 180,
                      child: Text(
                          'ON: 전원 켜기\n\n'
                          'OFF: 전원 끄기\n\n'
                          'HIGH: 히터 온도 올림\n\n'
                          'LOW: 히터 온도 내림\n',
                          style: TextStyle(color: Colors.black45, fontSize: 20, fontWeight: FontWeight.bold))),
                ],
              ),
            ),
            Divider(height: 2, color: Colors.black26),
            Container(
              child: Row(
                children: <Widget>[
                  Icon(Icons.history, size: 16, color: Colors.black38),
                  Text('  Copyright© 2021 HCI All rights reserved.',
                      style: TextStyle(fontSize: 13, color: Colors.black38)),
                  Spacer(),
                  Icon(Icons.chevron_right, size: 16, color: Colors.black38),
                ],
              ),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 9),
            )
          ],
        ),
      ),
    );
  }
}