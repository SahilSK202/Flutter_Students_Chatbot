import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterchatbotapp/reusable_widgets/chatbot_widget.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          title: Text(
            "Welcome ${FirebaseAuth.instance.currentUser!.displayName.toString()}",
            style: const TextStyle(fontSize: 24),
          ),
          actions: <Widget>[
            ElevatedButton(
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(0),
              ),
              onPressed: () {
                FirebaseAuth.instance.signOut().then((value) {
                  Navigator.pushNamedAndRemoveUntil(
                      context, "/signin", (r) => false);
                  // Navigator.pushReplacement(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => const SignInScreen()),
                  // );
                });
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(
                    Icons.logout_outlined,
                    size: 24.0,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text('Logout'),
                ],
              ),
            ),
          ],
        ),
        body: const chatbot_widget());
  }
}

// sahil@example.com
// sahil@123