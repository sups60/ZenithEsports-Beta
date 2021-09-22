import 'package:Zenith_Esports_Nepal/loginscreen.dart';
import 'package:Zenith_Esports_Nepal/notify.dart';

import 'package:Zenith_Esports_Nepal/registration.dart';
import 'package:Zenith_Esports_Nepal/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Zenith Esports Nepal',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: SplashScreen());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  getRegistrationForm() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return Message();
        },
      ),
    );
  }

  getNotification() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return Notify();
        },
      ),
    );
  }

  getAdminloginpage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return AdminLogin();
        },
      ),
    );
  }

  int _selectedIndex = 1;

  List<Widget> bottomnavigationwidget = <Widget>[
    Container(
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
    Container(
      child: Column(
        children: <Widget>[
          Image.asset("assets/registerone.PNG"),
          SizedBox(
            height: 20,
          ),
          Container(
            color: Colors.blueAccent,
            height: 60,
            width: double.infinity,
            child: Center(
              child: InkWell(
                child: Text(
                  """
Open the drawer and register from registration section
                          or
tap on (R) on top right side corner to register
""",
                  style: TextStyle(color: Colors.white),
                ),
                //  onTap: getRegistrationForm(),
                onTap: () {
                  // Navigator.push(context, route)
                },
              ),
            ),
          )
        ],
      ),
    ),
    Container(
      alignment: Alignment.topLeft,
      child: Image.asset("assets/rewards.PNG"),
    ),
  ];

  _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Zenith Esports Nepal"),
        // leading: CircleAvatar(
        //   radius: 0.1,
        //   child: Image.asset("assets/logo.png"),
        // ),
        actions: <Widget>[
          IconButton(
              icon: FaIcon(FontAwesomeIcons.arrowAltCircleRight),
              onPressed: () {
                getAdminloginpage();
              }),
          IconButton(
              icon: Icon(Icons.notifications_active),
              onPressed: () {
                getNotification();
              }),
          IconButton(
              icon: FaIcon(FontAwesomeIcons.registered),
              onPressed: () {
                getRegistrationForm();
              }),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.rubleSign,
              ),
              title: Text(
                "Rules",
              )),
          BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.registered,
              ),
              title: Text(
                "Registration",
              )),
          BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.gift,
              ),
              title: Text(
                "Rewards",
              )),
          // BottomNavigationBarItem(
          //     icon: FaIcon(FontAwesomeIcons.gift), title: Text("leaderboard")),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Zenith Esports Nepal"),
              accountEmail: Text("Zenithesportsnepal@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/logo.png"),
              ),
            ),
            ListTile(
              leading: FaIcon(FontAwesomeIcons.registered),
              title: Text("Register"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Message();
                    },
                  ),
                );
              },
            ),
            ListTile(
              onTap: () {
                launch("https://www.facebook.com/zenith.esports.org");
              },
              leading: FaIcon(FontAwesomeIcons.facebook),
              title: Text("Facebook Page"),
            ),
            ListTile(
              onTap: () {
                launch(
                    "https://www.youtube.com/channel/UCmrL0JjvdecTd-53Oo18_OQ");
              },
              leading: FaIcon(FontAwesomeIcons.youtube),
              title: Text("Youtube Channel"),
            ),
            ListTile(
              onTap: () {
                launch("https://discord.com/invite/s4F7grMXVf");
              },
              leading: FaIcon(FontAwesomeIcons.discord),
              title: Text("Discord "),
            ),
            ListTile(
              onTap: () {
                //  launch("https://discord.com/invite/s4F7grMXVf");
              },
              leading: FaIcon(FontAwesomeIcons.gamepad),
              title: Text("Leaderboard "),
            ),
          ],
        ),
      ),
      body: Center(
        child: bottomnavigationwidget.elementAt(_selectedIndex),
      ),
    );
  }
}

class Leaderboard extends StatelessWidget {
  const Leaderboard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Leaderboard")),
    );
  }
}
