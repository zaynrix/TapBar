import 'package:flutter/material.dart';


class Radio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),),
              Text("RADIO",style: TextStyle(fontSize: 30.0),

              ),
              Icon(Icons.radio,size: 90.0,)
            ],
          ),
        ),
      ),
    );
  }
}
