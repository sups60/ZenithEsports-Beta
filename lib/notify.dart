import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Notify extends StatefulWidget {
  const Notify({Key key}) : super(key: key);

  @override
  _NotifyState createState() => _NotifyState();
}

class _NotifyState extends State<Notify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notification"),
      ),
      body: StreamBuilder(
        stream: Firestore.instance.collection("notification").snapshots(),
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
                  height: 182,
                  child: Card(
                    elevation: 3,
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            height: MediaQuery.of(context).size.height * 0.2,
                            width: double.infinity,
                            color: Colors.red.shade200,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  "Notice : ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      // color: Colors.white,
                                      fontSize: 18),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  documentSnapshot['Notification'],
                                  style: TextStyle(fontSize: 16),
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
            print("couldnt load data");
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
