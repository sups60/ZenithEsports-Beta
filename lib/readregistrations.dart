import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Readmessage extends StatefulWidget {
  @override
  _ReadmessageState createState() => _ReadmessageState();
}

class _ReadmessageState extends State<Readmessage> {
  @override
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Read Registrations"),
      ),
      body: StreamBuilder(
        stream: Firestore.instance.collection("register").snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              shrinkWrap: true,
              itemCount: snapshot.data.documents.length,
              itemBuilder: (context, index) {
                DocumentSnapshot documentSnapshot =
                    snapshot.data.documents[index];
                return Container(
                  padding: EdgeInsets.all(3),
                  height: 600,
                  child: Card(
                    elevation: 3,
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            height: 30,
                            width: double.infinity,
                            color: Colors.orange[200],
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Team Name:",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  documentSnapshot['teamName'],
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          // Container(
                          //   padding: EdgeInsets.symmetric(horizontal: 5),
                          //   height: 40,
                          //   width: double.infinity,
                          //   color: Colors.red.shade200,
                          //   child: Column(
                          //     crossAxisAlignment: CrossAxisAlignment.start,
                          //     children: <Widget>[
                          //       SizedBox(
                          //         height: 3,
                          //       ),
                          //       Text(
                          //         "Team Leader: ",
                          //         style: TextStyle(
                          //             // fontWeight: FontWeight.bold,
                          //             // color: Colors.white,
                          //             // fontSize: 18
                          //             ),
                          //       ),
                          //       SizedBox(
                          //         height: 3,
                          //       ),
                          //       Text(
                          //         documentSnapshot['teamLeader'],
                          //         // style: TextStyle(fontSize: 16),
                          //       ),
                          //     ],
                          //   ),
                          // ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            height: 35,
                            width: double.infinity,
                            color: Colors.blue.shade200,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  " First Member Name: ",
                                  style: TextStyle(
                                      // fontWeight: FontWeight.bold,
                                      // color: Colors.white,
                                      // fontSize: 18
                                      ),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  documentSnapshot['firstmemberName'],
                                  style: TextStyle(fontSize: 10),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            height: 35,
                            width: double.infinity,
                            color: Colors.green.shade200,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  " First Member Gamer Stag ",
                                  style: TextStyle(
                                      //fontWeight: FontWeight.bold,
                                      // color: Colors.white,
                                      // fontSize: 18
                                      ),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  documentSnapshot['firstmembergamerStag'],
                                  style: TextStyle(fontSize: 10),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            height: 43,
                            width: double.infinity,
                            color: Colors.red.shade200,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  " First Member Email ",
                                  style: TextStyle(
                                      // fontWeight: FontWeight.bold,
                                      // color: Colors.white,
                                      // fontSize: 18
                                      ),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  documentSnapshot['firstmemberEmail'],
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            height: 20,
                            width: double.infinity,
                            color: Colors.blue[200],
                            child: Row(
                              children: <Widget>[
                                Text("First Member Phone :"),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  documentSnapshot['firstmemberPhone']
                                      .toString(),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            height: 35,
                            width: double.infinity,
                            color: Colors.blue.shade200,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  " Second Member Name: ",
                                  style: TextStyle(
                                      // fontWeight: FontWeight.bold,
                                      // color: Colors.white,
                                      // fontSize: 18
                                      ),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  documentSnapshot['secondmemberName'],
                                  style: TextStyle(fontSize: 10),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            height: 35,
                            width: double.infinity,
                            color: Colors.green.shade200,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  " Second Member Gamer Stag ",
                                  style: TextStyle(
                                      //fontWeight: FontWeight.bold,
                                      // color: Colors.white,
                                      // fontSize: 18
                                      ),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  documentSnapshot['secondmembergamerStag'],
                                  style: TextStyle(fontSize: 10),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            height: 43,
                            width: double.infinity,
                            color: Colors.red.shade200,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  " Second Member Email ",
                                  style: TextStyle(
                                      // fontWeight: FontWeight.bold,
                                      // color: Colors.white,
                                      // fontSize: 18
                                      ),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  documentSnapshot['secondmemberEmail'],
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            height: 20,
                            width: double.infinity,
                            color: Colors.blue[200],
                            child: Row(
                              children: <Widget>[
                                Text("Second Member Phone :"),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  documentSnapshot['secondmemberPhone']
                                      .toString(),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            height: 35,
                            width: double.infinity,
                            color: Colors.blue.shade200,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  " Third Member Name: ",
                                  style: TextStyle(
                                      // fontWeight: FontWeight.bold,
                                      // color: Colors.white,
                                      // fontSize: 18
                                      ),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  documentSnapshot['thirdmemberName'],
                                  style: TextStyle(fontSize: 10),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            height: 35,
                            width: double.infinity,
                            color: Colors.green.shade200,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  " Third Member Gamer Stag ",
                                  style: TextStyle(
                                      //fontWeight: FontWeight.bold,
                                      // color: Colors.white,
                                      // fontSize: 18
                                      ),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  documentSnapshot['thirdmembergamerStag'],
                                  style: TextStyle(fontSize: 10),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            height: 43,
                            width: double.infinity,
                            color: Colors.red.shade200,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  " Third Member Email ",
                                  style: TextStyle(
                                      // fontWeight: FontWeight.bold,
                                      // color: Colors.white,
                                      // fontSize: 18
                                      ),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  documentSnapshot['thirdmemberEmail'],
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            height: 20,
                            width: double.infinity,
                            color: Colors.blue[200],
                            child: Row(
                              children: <Widget>[
                                Text("Third Member Phone :"),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  documentSnapshot['thirdmemberPhone']
                                      .toString(),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            height: 35,
                            width: double.infinity,
                            color: Colors.blue.shade200,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  " Fourth Member Name: ",
                                  style: TextStyle(
                                      // fontWeight: FontWeight.bold,
                                      // color: Colors.white,
                                      // fontSize: 18
                                      ),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  documentSnapshot['fourthmemberName'],
                                  style: TextStyle(fontSize: 10),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            height: 35,
                            width: double.infinity,
                            color: Colors.green.shade200,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  " Fourth Member Gamer Stag ",
                                  style: TextStyle(
                                      //fontWeight: FontWeight.bold,
                                      // color: Colors.white,
                                      // fontSize: 18
                                      ),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  documentSnapshot['fourthmembergamerStag'],
                                  style: TextStyle(fontSize: 10),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            height: 43,
                            width: double.infinity,
                            color: Colors.red.shade200,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  " Fourth Member Email ",
                                  style: TextStyle(
                                      // fontWeight: FontWeight.bold,
                                      // color: Colors.white,
                                      // fontSize: 18
                                      ),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  documentSnapshot['fourthmemberEmail'],
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            height: 20,
                            width: double.infinity,
                            color: Colors.blue[200],
                            child: Row(
                              children: <Widget>[
                                Text("Fourth Member Phone :"),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  documentSnapshot['fourthmemberPhone']
                                      .toString(),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          } else {
            return Align(
              alignment: FractionalOffset.center,
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
