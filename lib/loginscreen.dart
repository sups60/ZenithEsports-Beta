import 'package:Zenith_Esports_Nepal/readregistrations.dart';
import 'package:flutter/material.dart';

class AdminLogin extends StatefulWidget {
  @override
  _AdminLoginState createState() => _AdminLoginState();
}

class _AdminLoginState extends State<AdminLogin> {
  String email = 'The Entered email And Password is Incorrect';
  String password = '';
  String error = "";

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.amber[500],
        title: Text("Admin Login page"),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue[300], Colors.blue[500], Colors.blue[700]],
              ),
            ),
            child: Center(
              child: Form(
                key: _formkey,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Admin Login",
                      style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      "Its only login page for admin ",
                      style: TextStyle(
                          fontSize: 24,
                          // fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            TextFormField(
                              validator: (value) =>
                                  value.isEmpty ? "Enter An Email" : null,
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.email),
                                labelText: "Email",
                                border: OutlineInputBorder(),
                              ),
                              onChanged: (value) {
                                setState(() {
                                  email = value;
                                });
                              },
                            ),
                            SizedBox(height: 10),
                            TextFormField(
                              validator: (value) =>
                                  value.isEmpty ? "Enter An Password" : null,
                              decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.account_circle),
                                  labelText: "Password",
                                  border: OutlineInputBorder()),
                              onChanged: (value) {
                                setState(() {
                                  password = value;
                                });
                              },
                              obscureText: true,
                            ),
                            RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              onPressed: () async {
                                if (_formkey.currentState.validate()) {
                                  if (email == "e" && password == 'p') {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return Readmessage();
                                        },
                                      ),
                                    );
                                  }
                                }
                              },
                              child: Text(
                                "Log In ",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              color: Colors.blue,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              error,
                              style: TextStyle(color: Colors.red),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
