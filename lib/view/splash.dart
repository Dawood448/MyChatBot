import 'dart:async';

import 'package:chatapp/view/mainWrapper.dart';
import 'package:chatapp/view/signIn.dart';
import 'package:chatapp/view/welcome.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    User? user = FirebaseAuth.instance.currentUser;
    Future.delayed(const Duration(seconds: 3),() => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => user == null ? const SignIn() : const MainWrapper())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assets/Logo.png', width: 500, height: 500,),
      ),
    );
  }
}
