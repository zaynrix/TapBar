import 'package:flutter/material.dart';
import 'hal_computer.dart' as Computer;
import 'hal_headset.dart' as Headset;
import 'hal_radio.dart' as Radio;
import 'hal_smartphone.dart' as Smartphone;
void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new Home(),
    title: "Hello",
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}


class _HomeState extends State<Home> with SingleTickerProviderStateMixin{

  TabController controller;
@override
  void initState() {
controller = new TabController( vsync: this,length: 4);
    super.initState();
  }

@override
  void dispose() {
  controller.dispose();
  super.dispose();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("TapBar"),
        centerTitle: true,
        backgroundColor: Colors.red,
        bottom: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.computer),),
            new Tab(icon: new Icon(Icons.headset),),
            new Tab(icon: new Icon(Icons.smartphone),),
            new Tab(icon: new Icon(Icons.radio),),

          ],
        ),
      ),
      body: new TabBarView(
      controller: controller,
        children: <Widget>[
          new Computer.Computer(),
          new Smartphone.SMARTPHONE(),
          new Radio.Radio(),
          new Headset.Headset(),
        ],
      ),
    );
  }
}
