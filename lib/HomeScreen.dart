import 'package:flutter/material.dart';
import 'package:scrow/Pages/firstScreen.dart';
import 'package:scrow/Pages/forEmpty.dart';



class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController controller = TextEditingController();
  final formKey = GlobalKey<FormState>();
  String name;
  checkEmpty(){
    final form = formKey.currentState;
    if(form.validate()){

      print('Valid');
    }else{
      print('Invalid');
    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     /* appBar: AppBar(
        centerTitle: true,
        title: Text('Dictionary App',
          style: TextStyle(
              color: Colors.white
          ),
        ),

      ),*/
      body: ListView(
        children: <Widget>[
          Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 100,
              ),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(
                    "asset/images/run.png"
                  ), fit: BoxFit.contain),
                ),
              ),



              Text("Welcome to FitNess App"),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text("What is your Name"),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.only(left: 30, right: 30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5)
                ),
                child: Form(
                    key: formKey,
                  child: TextFormField(
                    onSaved: (value){
                      name = value;
                    },
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
                    controller: controller,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(left: 10),
                      hintText: "Please enter your Name",
                      //labelText: "Name",
                      errorText: "Please, give us your Name",
                      border: InputBorder.none
                    ),
                  ),
                ),
              ),
                  SizedBox(
                    height: 20,
                  ),
              FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)
                ),
                textColor: Colors.white,
                color: Colors.cyan,
                  onPressed: (){
                    if(controller.text.trim() == null){
                      /*Navigator.of(context).push(MaterialPageRoute(builder:
                      (context){
                        return ForEmpty();
                      }));*/
                      ForEmpty();
                    }
                    else{
                     /* Navigator.of(context).push(MaterialPageRoute(builder:
                          (context){
                        return StartUpScreen(
                          value: controller.text.trim(),
                        );
                      }));*/
                     /*return StartUpScreen(
                       value: controller.text.trim(),
                     );
                      print("I was Tapped");*/

                     Navigator.of(context).push(MaterialPageRoute(builder:
                     (context){
                      return StartUpScreen(
                        value: controller.text,
                      );
                     }));
                    }
                  },
                  child: Text("Let's Get started..."))

            ],
          ),
        ],
      ),
    );
  }
}
