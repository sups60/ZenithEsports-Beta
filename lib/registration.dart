import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

class Message extends StatefulWidget {
  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> {
  var _formKey = GlobalKey<FormState>();

  String teamName,
      teamLeader,
      firstmemberName,
      firstmembergamerStag,
      firstmemberEmail,
      secondmemberName,
      secondmembergamerStag,
      secondmemberEmail,
      thirdmemberName,
      thirdmembergamerStag,
      thirdmemberEmail,
      fourthmemberName,
      fourthmembergamerStag,
      fourthmemberEmail;

  double firstmemberPhone,
      secondmemberPhone,
      thirdmemberPhone,
      fourthmemberPhone;

  getTeamName(teamname) {
    this.teamName = teamname;
  }

  getTeamLeader(teamleader) {
    this.teamLeader = teamleader;
  }

  getFirstMemberName(firstmemberName) {
    this.firstmemberName = firstmemberName;
  }

  getfirstmembergamerStag(firstmembergamerStag) {
    this.firstmembergamerStag = firstmembergamerStag;
  }

  getfirstmemberEmail(firstmemberEmail) {
    this.firstmemberEmail = firstmemberEmail;
  }

  getsecondMemberName(secondmemberName) {
    this.secondmemberName = secondmemberName;
  }

  getsecondmembergamerStag(secondmembergamerStag) {
    this.secondmembergamerStag = secondmembergamerStag;
  }

  getsecondmemberEmail(secondmemberEmail) {
    this.secondmemberEmail = secondmemberEmail;
  }

  getthirdMemberName(thirdmemberName) {
    this.thirdmemberName = thirdmemberName;
  }

  getthirdmembergamerStag(thirdmembergamerStag) {
    this.thirdmembergamerStag = thirdmembergamerStag;
  }

  getthirdmemberEmail(thirdmemberEmail) {
    this.thirdmemberEmail = thirdmemberEmail;
  }

  getfourthMemberName(fourthmemberName) {
    this.fourthmemberName = fourthmemberName;
  }

  getfourthmembergamerStag(fourthmembergamerStag) {
    this.fourthmembergamerStag = fourthmembergamerStag;
  }

  getfourthmemberEmail(fourthmemberEmail) {
    this.fourthmemberEmail = fourthmemberEmail;
  }

  getfirstmemberPhone(firstmemberPhone) {
    this.firstmemberPhone = firstmemberPhone;
  }

  getsecondmemberPhone(secondmemberPhone) {
    this.secondmemberPhone = secondmemberPhone;
  }

  getthirdmemberPhone(thirdmemberPhone) {
    this.thirdmemberPhone = thirdmemberPhone;
  }

  getfourthmemberPhone(fourthmemberPhone) {
    this.fourthmemberPhone = fourthmemberPhone;
  }

  createData() {
    DocumentReference documentReference =
        Firestore.instance.collection("register").document(teamName);

    // create map
    Map<String, dynamic> persons = {
      "teamLeader": teamLeader,
      "teamName": teamName,
      "firstmemberName": firstmemberName,
      "firstmemberPhone": firstmemberPhone,
      "firstmembergamerStag": firstmembergamerStag,
      "firstmemberEmail": firstmemberEmail,
      "secondmemberName": secondmemberName,
      "secondmemberPhone": secondmemberPhone,
      "secondmembergamerStag": secondmembergamerStag,
      "secondmemberEmail": secondmemberEmail,
      "thirdmemberName": thirdmemberName,
      "thirdmemberPhone": thirdmemberPhone,
      "thirdmembergamerStag": thirdmembergamerStag,
      "thirdmemberEmail": thirdmemberEmail,
      "fourthmemberName": fourthmemberName,
      "fourthmemberPhone": fourthmemberPhone,
      "fourthmembergamerStag": fourthmembergamerStag,
      "fourthmemberEmail": fourthmemberEmail
    };

    documentReference
        .setData(persons)
        .whenComplete(() => print("$teamName created"));

    showAlertDialog(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PUBG Registration"),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                TextFormField(
                  validator: (val) => val.isEmpty ? "Team Name " : null,
                  maxLength: 25,
                  decoration: InputDecoration(
                    labelText: "Team Name ",
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (String teamname) {
                    getTeamName(teamname);
                  },
                ),
                TextFormField(
                  validator: (val) => val.isEmpty ? "Team Leader " : null,
                  maxLength: 25,
                  decoration: InputDecoration(
                    labelText: "Team Leader ",
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (String teamleader) {
                    getTeamLeader(teamleader);
                  },
                ),
                TextFormField(
                  validator: (val) => val.isEmpty ? "Member #1 Name " : null,
                  maxLength: 25,
                  decoration: InputDecoration(
                    labelText: "Member #1 Name ",
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (String firstmemberName) {
                    getFirstMemberName(firstmemberName);
                  },
                ),
                TextFormField(
                  validator: (val) =>
                      val.isEmpty ? "Gamer's id Member #1" : null,
                  maxLength: 25,
                  decoration: InputDecoration(
                    labelText: " Gamer's id Member #1 ",
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (String firstmembergamerStag) {
                    getfirstmembergamerStag(firstmembergamerStag);
                  },
                ),
                TextFormField(
                  validator: (val) => val.isEmpty ? "Email of Member #1" : null,
                  maxLength: 25,
                  decoration: InputDecoration(
                    labelText: " Email of Member #1 ",
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (String firstmemberEmail) {
                    getfirstmemberEmail(firstmemberEmail);
                  },
                ),
                TextFormField(
                  validator: (val) =>
                      val.length != 10 ? "Enter Your Valid PhoneNumber " : null,
                  keyboardType: TextInputType.number,
                  maxLength: 10,
                  decoration: InputDecoration(
                      labelText: "Phone Number of member #1",
                      border: OutlineInputBorder(),
                      helperText:
                          "Your phone number won't be disclosed anywhere"),
                  onChanged: (String firstmemberPhone) {
                    getfirstmemberPhone(double.parse(firstmemberPhone));
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      "Member #2",
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  validator: (val) => val.isEmpty ? "Member #2 Name " : null,
                  maxLength: 25,
                  decoration: InputDecoration(
                    labelText: "Member #2 Name ",
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (String secondmemberName) {
                    getsecondMemberName(secondmemberName);
                  },
                ),
                TextFormField(
                  validator: (val) =>
                      val.isEmpty ? "Gamer's id Member #2" : null,
                  maxLength: 25,
                  decoration: InputDecoration(
                    labelText: " Gamer's id Member #2 ",
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (String secondmembergamerStag) {
                    getsecondmembergamerStag(secondmembergamerStag);
                  },
                ),
                TextFormField(
                  validator: (val) => val.isEmpty ? "Email of Member #2" : null,
                  maxLength: 25,
                  decoration: InputDecoration(
                    labelText: " Email of Member #2 ",
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (String secondmemberEmail) {
                    getsecondmemberEmail(secondmemberEmail);
                  },
                ),
                TextFormField(
                  validator: (val) =>
                      val.length != 10 ? "Enter Your Valid PhoneNumber " : null,
                  keyboardType: TextInputType.number,
                  maxLength: 10,
                  decoration: InputDecoration(
                      labelText: "Phone Number of member #2",
                      border: OutlineInputBorder(),
                      helperText:
                          "Your phone number won't be disclosed anywhere"),
                  onChanged: (String secondmemberPhone) {
                    getsecondmemberPhone(double.parse(secondmemberPhone));
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      "Member #3",
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  validator: (val) => val.isEmpty ? "Member #3 Name " : null,
                  maxLength: 25,
                  decoration: InputDecoration(
                    labelText: "Member #3 Name ",
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (String thirdMemberName) {
                    getthirdMemberName(thirdMemberName);
                  },
                ),
                TextFormField(
                  validator: (val) =>
                      val.isEmpty ? "Gamer's id Member #3" : null,
                  maxLength: 25,
                  decoration: InputDecoration(
                    labelText: " Gamer's id Member #3 ",
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (String thirdmembergamerStag) {
                    getthirdmembergamerStag(thirdmembergamerStag);
                  },
                ),
                TextFormField(
                  validator: (val) => val.isEmpty ? "Email of Member #3" : null,
                  maxLength: 25,
                  decoration: InputDecoration(
                    labelText: " Email of Member #3 ",
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (String thirdmemberEmail) {
                    getthirdmemberEmail(thirdmemberEmail);
                  },
                ),
                TextFormField(
                  validator: (val) =>
                      val.length != 10 ? "Enter Your Valid PhoneNumber " : null,
                  keyboardType: TextInputType.number,
                  maxLength: 10,
                  decoration: InputDecoration(
                      labelText: "Phone Number of member #3",
                      border: OutlineInputBorder(),
                      helperText:
                          "Your phone number won't be disclosed anywhere"),
                  onChanged: (String thirdmemberPhone) {
                    getthirdmemberPhone(double.parse(thirdmemberPhone));
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      "Member #4",
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  validator: (val) => val.isEmpty ? "Member #4 Name " : null,
                  maxLength: 25,
                  decoration: InputDecoration(
                    labelText: "Member #4 Name ",
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (String fourthMemberName) {
                    getfourthMemberName(fourthMemberName);
                  },
                ),
                TextFormField(
                  validator: (val) =>
                      val.isEmpty ? "Gamer's id Member #4" : null,
                  maxLength: 25,
                  decoration: InputDecoration(
                    labelText: " Gamer's id Member #4 ",
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (String fourthmembergamerStag) {
                    getfourthmembergamerStag(fourthmembergamerStag);
                  },
                ),
                TextFormField(
                  validator: (val) => val.isEmpty ? "Email of Member #4" : null,
                  maxLength: 25,
                  decoration: InputDecoration(
                    labelText: " Email of Member #4 ",
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (String fourthmemberEmail) {
                    getfourthmemberEmail(fourthmemberEmail);
                  },
                ),
                TextFormField(
                  validator: (val) =>
                      val.length != 10 ? "Enter Your Valid PhoneNumber " : null,
                  keyboardType: TextInputType.number,
                  maxLength: 10,
                  decoration: InputDecoration(
                      labelText: "Phone Number of member #4",
                      border: OutlineInputBorder(),
                      helperText:
                          "Your phone number won't be disclosed anywhere"),
                  onChanged: (String fourthmemberPhone) {
                    getfourthmemberPhone(double.parse(fourthmemberPhone));
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  color: Colors.blue,
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      return createData();
                    }
                  },
                  child: Text(
                    "Register ",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  // Create button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return Rules();
      }));
    },
  );

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Registered Sucessfully"),
    content: Text("""
You have sucessfully registered. 

Follow discord for anyupdates or questions"""),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

class Rules extends StatelessWidget {
  const Rules({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Rules")),
      body: Container(
        alignment: Alignment.topRight,
        decoration: BoxDecoration(
          color: Colors.grey,
          // image: DecorationImage(
          //   image: AssetImage("assets/rules.PNG"),
          // ),
        ),

        // child: Image.asset(
        //   "assets/rules.PNG",
        //   scale: 2,
        // ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("""
 Rules: 
 
1. One player is not allowed to play in more than one squad.

2. Use of emulator or any other crack versions will result in disqualification.

3. A squad should consist of exactly 4 players.

4. Two players cannot have same gamer tag or two squads cannot have same name.

5. Players are responsible for poor connection on their devices while playing the game.

6. If player fails to join the match, then we are not responsible.

7. Do not change your team name and gamer tag/id after you have registered for the tournament.

8. The prize money shall be given to the team leader.

9. Users must have an esewa id to collect prize money. No other forms of payment is accepted.

"""),
        ),
      ),
    );
  }
}
