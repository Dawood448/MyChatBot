import 'package:chatapp/view/signIn.dart';
import 'package:chatapp/view/signUp.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          Center(
              child: Image.asset(
            'assets/Logo.png',
            width: 250,
            height: 250,
          )),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.005,
          ),
          const Text(
            'Welcome to',
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.w700,
            ),
          ),
          const Text(
            'Intelligent Personal Advisor',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Color(0xff170E2B),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.85,
            child: const Text(
              'Lorem ipsum dolor sit amet consectetur. Sit cras faucibus dictumst vitae. Amet tincidunt ut congue sapien.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Color(0xff979797),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.08,
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUp()));
            },
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width * .9,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xff0C8CE9),
                  ),
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                ),
                child: const Center(
                  child: Text(
                    'Create an Account',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff0C8CE9),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          const Text('Already have an account?', style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Color(0xff999999),
          ),),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const SignIn()));
            },
            child: const Text('Login', style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w700,
              color: Color(0xff0C8CE9),
            ),),
          ),
        ]),
      )),
    );
  }
}
