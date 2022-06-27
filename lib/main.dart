import 'package:flutter/material.dart';
import 'loginScreen.dart';
import 'package:firebase_core/firebase_core.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Time Keeper';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Time Keeper',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: LoginScreen(),
      );
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  set c(Color c) {}

  @override
  Widget build(BuildContext context) => Scaffold(
        // drawer: NavigationDrawerWidget(),
        // endDrawer: NavigationDrawerWidget(),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue,
          title: Text(
            MyApp.title,
          ),
        ),
        body: Container(
          color: Colors.blueGrey,
          child: Center(
            child: ElevatedButton(
              child: Text('Log In'),
              onPressed: () => {
                LoginScreen(),
              },
            ),
          ),
        ),
      );
}
