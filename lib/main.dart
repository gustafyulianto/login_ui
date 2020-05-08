import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login UI'),
      ),
      body: Padding(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                child: Text(
                  'LOGIN UI',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                child: Tooltip(
                  message: 'Enter Application',
                  child: Text(
                    'Sign in',
                    style: TextStyle(color: Colors.blue, fontSize: 20),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: TextField(
                  obscureText: true,
                  controller: nameController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    hintText: "User Name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    labelText: 'User Name',
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: TextField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    hintText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    labelText: 'Password',
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {},
                textColor: Colors.blue,
                child: Text('Forgot Password'),
              ),
              Container(
                height: 50,
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: RaisedButton(
                    textColor: Colors.white,
                    color: Colors.blue,
                    child: Text('Login'),
                    onPressed: () {
                      print(nameController.text);
                      print(passwordController.text);
                    }),
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    Text('Does not have account ?'),
                    FlatButton(
                      textColor: Colors.blue,
                      child: Text(
                        'Sign In',
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {},
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ),
            ],
          )),
    );
  }
}
