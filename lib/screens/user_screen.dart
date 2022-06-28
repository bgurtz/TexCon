import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'timesheet_screen.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Container(
                  height: 142,
                  width: MediaQuery.of(context).size.width,
                  child: Image.network(
                    "data:image/jpeg;base64,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",
                  )),
              decoration: BoxDecoration(
                color: Colors.blue[900],
              ),
            ),
            Center(
              child: Container(
                color: Colors.blue[900],
                child: Text(
                  'Barry Bizzy',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ListTile(
              title: const Text('Employee #1'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TimesheetScreen(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Employee #2'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TimesheetScreen(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Employee #3'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TimesheetScreen(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Employee #4'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TimesheetScreen(),
                  ),
                );
              },
            ),
            Divider(height: 5),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Add Employee'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue[900],
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        centerTitle: true,
        title: Text('User Screen'),
      ),
      body: Container(
        color: Colors.blueGrey[300],
        child: Column(
          children: [
            SizedBox(height: 150),
            Center(
              child: Text(
                'This is the screen displayed upon signing in.\n It will show user specific messages here.\n It will have a menu with options to display employee list',
              ),
            ),
            SizedBox(height: 100),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  );
                },
                child: Text('Exit App'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue[900],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
