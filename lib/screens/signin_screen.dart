// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:/reusable_widgets/reusable_widget.dart';
// import 'package:screens/home_screen.dart';
// import 'package:screens/reset_password.dart';
// import 'package:screens/signup_screen.dart';
// import 'package:utils/color_utils.dart';
import 'package:flutter/material.dart';
import 'signup_screen.dart';
import 'user_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        centerTitle: true,
        title: Text('Sign In Screen'),
      ),
      backgroundColor: Colors.blueGrey[300],
      body: Container(
        color: Colors.blueGrey[300],
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Center(
              child: Text('This screen will allow a user to sign in.'),
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => UserScreen(),
                    ),
                  );
                },
                child: Text('Sign In '),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue[900],
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUpScreen(context),
                    ),
                  );
                },
                child: Text('Create User'),
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



// class SignInScreen extends StatefulWidget {
//   const SignInScreen({Key? key}) : super(key: key);

//   @override
//   _SignInScreenState createState() => _SignInScreenState();
// }

// class _SignInScreenState extends State<SignInScreen> {
//   TextEditingController _passwordTextController = TextEditingController();
//   TextEditingController _emailTextController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         width: MediaQuery.of(context).size.width,
//         height: MediaQuery.of(context).size.height,
//         decoration: BoxDecoration(
//             gradient: LinearGradient(colors: [
//           hexStringToColor("CB2B93"),
//           hexStringToColor("9546C4"),
//           hexStringToColor("5E61F4")
//         ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: EdgeInsets.fromLTRB(
//                 20, MediaQuery.of(context).size.height * 0.2, 20, 0),
//             child: Column(
//               children: <Widget>[
//                 logoWidget("assets/images/logo1.png"),
//                 const SizedBox(
//                   height: 30,
//                 ),
//                 reusableTextField("Enter UserName", Icons.person_outline, false,
//                     _emailTextController),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 reusableTextField("Enter Password", Icons.lock_outline, true,
//                     _passwordTextController),
//                 const SizedBox(
//                   height: 5,
//                 ),
//                 forgetPassword(context),
//                 firebaseUIButton(context, "Sign In", () {
//                   FirebaseAuth.instance
//                       .signInWithEmailAndPassword(
//                           email: _emailTextController.text,
//                           password: _passwordTextController.text)
//                       .then((value) {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (context) => HomeScreen()));
//                   }).onError((error, stackTrace) {
//                     print("Error ${error.toString()}");
//                   });
//                 }),
//                 signUpOption()
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Row signUpOption() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         const Text("Don't have account?",
//             style: TextStyle(color: Colors.white70)),
//         GestureDetector(
//           onTap: () {
//             Navigator.push(context,
//                 MaterialPageRoute(builder: (context) => SignUpScreen()));
//           },
//           child: const Text(
//             " Sign Up",
//             style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//           ),
//         )
//       ],
//     );
//   }

//   Widget forgetPassword(BuildContext context) {
//     return Container(
//       width: MediaQuery.of(context).size.width,
//       height: 35,
//       alignment: Alignment.bottomRight,
//       child: TextButton(
//         child: const Text(
//           "Forgot Password?",
//           style: TextStyle(color: Colors.white70),
//           textAlign: TextAlign.right,
//         ),
//         onPressed: () => Navigator.push(
//             context, MaterialPageRoute(builder: (context) => ResetPassword())),
//       ),
//     );
//   }
// }