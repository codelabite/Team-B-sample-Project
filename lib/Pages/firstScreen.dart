import 'package:flutter/material.dart';
import 'package:scrow/Pages/recordScreen.dart';

class StartUpScreen extends StatefulWidget {
  final String value;
  const StartUpScreen({Key key, this.value}) : super(key: key);
  @override
  _StartUpScreenState createState() => _StartUpScreenState();
}

class _StartUpScreenState extends State<StartUpScreen> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            }),
        title: Text(
          'Welcome Screen',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 150,
              ),
              Center(
                child: Text("Hello"),
              ),
              Text(
                "${widget.value}",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60),
              ),
              SizedBox(
                height: 1,
              ),
              Text("How long would you want"),
              SizedBox(
                height: 5,
              ),
              Text(
                "to run today?",
                style: TextStyle(fontSize: 30),
              ),
              /*Container(
                margin: const EdgeInsets.only(left: 30, right: 30),
                decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(5)),
                child: TextField(
                  controller: controller,
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(left: 10),
                      hintText: "How long would you want to run today?",
                      labelText: "Km/hr",
                      border: InputBorder.none),
                ),
              ),*/
              SizedBox(
                height: 10,
              ),
              FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  textColor: Colors.white,
                  color: Colors.cyan,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return RecordScreen(
                        value: controller.text.trim(),
                      );
                    }));
                  },
                  child:
                      Text("Push to the Next Screen and Let's Get Started..."))
            ],
          ),
        ],
      ),
    );
  }
}
