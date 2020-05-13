import 'package:flutter/material.dart';

class RecordScreen extends StatefulWidget {
  final String value;

  const RecordScreen({Key key, this.value}) : super(key: key);
  @override
  _RecordScreenState createState() => _RecordScreenState();
}

class _RecordScreenState extends State<RecordScreen> {
  final formKey = GlobalKey<FormState>();
  TextEditingController recordController = TextEditingController();
  int initialRunningTime = 0;
  int TotalRunning = 0;

  create(){
    //var firstTest = widget.value;
    //int initialRunningTime =  run + int.parse(widget.value);
    final form = formKey.currentState;
    setState(() {
      initialRunningTime = int.parse(recordController.text);
      TotalRunning = TotalRunning + initialRunningTime;
    });
  }

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
        title: Text('Record Screen',
          style: TextStyle(
              color: Colors.white
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              //mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                SizedBox(
                height: 80,
              ),
                Text("You've covered a total of"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("${TotalRunning}",
                    style: TextStyle(
                      fontSize: 80
                    ),),
                    Text("Km/hr"),
                  ],
                ),


                SizedBox(
                  height: 1,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("You have"),
                    Text(" ${2000-TotalRunning}",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.red
                    ),),
                    Text("km/hr"),
                    Text(" to Go!"),
                  ],
                ),



                SizedBox(
                  height: 10,
                ),
            //Text(" ${2000-TotalRunning}"),
                Text("How long more, would you want to run?"),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 30, right: 30),
                  decoration: BoxDecoration(
                      color: Colors.white, borderRadius: BorderRadius.circular(5)),
                  child: Form(
                    key: formKey,
                    child: TextFormField(

                      validator: (value){
                        if(value.isEmpty){
                          return "Please enter your Name";
                        }
                        else{
                          return null;
                        }
                        // value.isEmpty ? "Please enter your Name" : null;
                      },
                      autofocus: true,

                      controller: recordController,
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(left: 10),
                          hintText: "How long would you want to run today?",
                          labelText: "Km/hr",
                          border: InputBorder.none),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    textColor: Colors.white,
                    color: Colors.cyan,
                    onPressed: () {
                      create();
                    },
                    child: Text("Go to Record Screen..."))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
