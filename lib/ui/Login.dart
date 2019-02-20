import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new LoginState();
  }
}

class LoginState extends State<Login> {
  final TextEditingController _userController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();
  String _welcomeText = "";

  void _clearBox() {
    setState(() {
      _userController.clear();
      _passwordController.clear();
    });
  }

  void _showWelcome() {
    setState(() {
      if (_userController.text.isNotEmpty &&
          _passwordController.text.isNotEmpty) {
        _welcomeText = _userController.text;
      } else {
        _welcomeText = "Cannot Empty";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Login"),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),

      //Add Background Layout
      backgroundColor: Colors.deepOrange.shade100,

      //Add Body
      body: new Container(
        alignment: Alignment.center,
        child: new ListView(
          children: <Widget>[
            new Padding(padding: const EdgeInsets.all(16.0)),
            new Image.asset(
              'images/ex1.png',
              width: 90.0,
              height: 90.0,
              color: Colors.redAccent,
            ),

            new Container(
              alignment: Alignment.center,
              margin: new EdgeInsets.all(8.0),
              child: new Text(
                "Flutter VichitDev Login",
                style: new TextStyle(
                    color: Colors.lightGreen,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold),
              ),
            ),

            //Add Form
            new Container(
              margin: const EdgeInsets.all(16.0),
              padding: const EdgeInsets.all(16.0),
              color: Colors.white,
              child: new Column(
                children: <Widget>[
                  new TextField(
                    controller: _userController,
                    decoration: new InputDecoration(
                        hintText: "Username", icon: new Icon(Icons.person)),
                  ),
                  new TextField(
                    controller: _passwordController,
                    decoration: new InputDecoration(
                        hintText: "Password", icon: new Icon(Icons.lock)),
                    obscureText: true,
                  ),


                  //Add Form Button
                  new Padding(padding: new EdgeInsets.all(8.0)),
                  new Container(
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        //Add Button
                        new Container(
                          margin: new EdgeInsets.all(8.0),
                          child: new RaisedButton(
                            onPressed: _showWelcome,
                            color: Colors.redAccent,
                            child: new Text(
                              "Login",
                              style: new TextStyle(
                                  color: Colors.white, fontSize: 16.9),
                            ),
                          ),
                        ),
                        //Add Button
                        new Container(
                          child: new RaisedButton(
                            onPressed: _clearBox,
                            color: Colors.lightGreen,
                            child: new Text(
                              "Clear",
                              style: new TextStyle(
                                  color: Colors.white, fontSize: 16.9),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            new Center(
              child: new Text(
                "Welcome Result $_welcomeText",
                style: new TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
