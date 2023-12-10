import 'package:chatapp/firebase_options.dart';
import 'package:chatapp/model/ChatModel.dart';
import 'package:chatapp/view/chatscreen.dart';
import 'package:chatapp/view/emptychathistory.dart';
import 'package:chatapp/view/emptychathistory2.dart';
import 'package:chatapp/view/forgetPass.dart';
import 'package:chatapp/view/mainWrapper.dart';
import 'package:chatapp/view/settings.dart';
import 'package:chatapp/view/signIn.dart';
import 'package:chatapp/view/signUp.dart';
import 'package:chatapp/view/splash.dart';
import 'package:chatapp/view/welcome.dart';
import 'package:chatapp/view/welcomePage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(ChatModelAdapter());
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0.7,
        )
      ),
      home: const SplashScreen(),
    );
  }
}

