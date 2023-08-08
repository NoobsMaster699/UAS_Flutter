import 'package:flutter/material.dart';
import 'package:uas_flutter2/about.dart';
import 'package:uas_flutter2/login.dart';
import 'package:uas_flutter2/styles/fontStyle.dart';
import 'package:uas_flutter2/help.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color(0xFF4FACF7),
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
        title: Text(
          'DriveTKJ',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Welcome to DriveTKJ',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              title: Text('About '),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => AboutScreen()));
              },
            ),
            ListTile(
              title: Text('Help & Support'),
              onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => HelpSupportScreen()));// Perform actions when item 2 is tapped
              },
            ),
             ListTile(
              title: Text('Logout'),
                onTap: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => MyLogin()));
                  },
                ),
            // Add more list items as needed
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 10,
              decoration: BoxDecoration(
                color: Color(0xFF4FACF7),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Discover', style: header),
                      SizedBox(
                        height: 4,
                      ),
                      Text('Film Terbaru', style: subtitle),
                    ],
                  ),
                  Spacer(),
                  Icon(
                    Icons.search,
                    size: 36,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 15,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/background/opp.jpg',
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 13),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Oppenheimer', style: title),
                            SizedBox(
                              height: 4,
                            ),
                            Text('History, Action', style: subtitle),
                          ],
                        ),
                        Spacer(),
                        Icon(
                          Icons.star,
                          size: 26,
                          color: Colors.grey,
                        ),
                        Icon(
                          Icons.star,
                          size: 26,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          size: 26,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          size: 26,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          size: 26,
                          color: Colors.yellow,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('From Disney+', style: header),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'assets/background/spider.jpg',
                          height: 160,
                        ),
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Spider-Man: Roy Moralles', style: title),
                          SizedBox(
                            height: 4,
                          ),
                          Text('Animation, Action', style: subtitle),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                   Row(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'assets/background/spider1.jpg',
                          height: 160,
                        ),
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Ant-Man and the Wasp', style: title),
                          SizedBox(
                            height: 4,
                          ),
                          Text(' Action, Comedy, Drama', style: subtitle),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
