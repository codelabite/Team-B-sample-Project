import 'package:flutter/material.dart';

class ForEmpty extends StatefulWidget {
  @override
  _ForEmptyState createState() => _ForEmptyState();
}

class _ForEmptyState extends State<ForEmpty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios,
              color: Colors.white,),
            onPressed: (){
              Navigator.of(context).pop();
            }),
        title: Text('Dictionary App',
          style: TextStyle(
              color: Colors.white
          ),
        ),

      ),
      body: Center(
        child: Text("Hello"),
      ),
    );
  }
}
