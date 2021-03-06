import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:chat_flutter/screens/welcome_screen.dart';
import 'package:chat_flutter/screens/login_screen.dart';
import 'package:chat_flutter/screens/registration_screen.dart';
import 'package:chat_flutter/screens/chat_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /*
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.black54),
        ),
      )*/

      home: WelcomeScreen(),
      initialRoute: WelcomeScreen.welcomeScreenID,
      routes: {
        WelcomeScreen.welcomeScreenID: (context) => WelcomeScreen(),
        LoginScreen.LoginScreenID: (context) => LoginScreen(),
        RegistrationScreen.RegistrationScreenID: (context) =>
            RegistrationScreen(),
        ChatScreen.ChatScreenID: (context) => ChatScreen()
      },
    );
  }
}
