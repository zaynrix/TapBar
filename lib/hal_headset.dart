import 'package:flutter/material.dart';


class Headset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),),
             Text("HEADSET",style: TextStyle(fontSize: 30.0),

                ),
            Icon(Icons.headset,size: 90.0,)
     ],
    ),
        ),
      ),
    );
  }
}
