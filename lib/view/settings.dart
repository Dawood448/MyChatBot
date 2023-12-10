import 'package:chatapp/view/privacypolicy.dart';
import 'package:chatapp/view/signIn.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';

import 'emptychathistory2.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F9FF),
      appBar: AppBar(
        title: const Text(
          'Settings',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 17),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 26.0, bottom: 16),
            child: Text('GENERAL', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: Colors.grey)),
          ),
          Center(
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(16),
              width: MediaQuery.of(context).size.width * .9,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                    child: Row(
                      children: [
                        Image.asset('assets/4th Button.png', width: 25, height: 25,),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text('Profile', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black)),
                        const Spacer(),
                        const Icon(Icons.arrow_forward_ios, size: 18,),
                      ],
                    ),
                  ),
                  Container(
                    height: 1,
                    width: MediaQuery.of(context).size.width * .8,
                    color: Colors.grey[300],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Image.asset('assets/Light Bulb.png', width: 25, height: 25,),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text('Dark Mode', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black)),
                        const Spacer(),
                         CupertinoSwitch(value: false, onChanged: (value) {

                        }, )
                      ],
                    ),
                  ),
                  Container(
                    height: 1,
                    width: MediaQuery.of(context).size.width * .8,
                    color: Colors.grey[300],
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const PrivacyPolicy()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                      child: Row(
                        children: [
                          Image.asset('assets/Info Square.png', width: 25, height: 25,),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text('Privacy Policy', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black)),
                          const Spacer(),
                          const Icon(Icons.arrow_forward_ios, size: 18,),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 1,
                    width: MediaQuery.of(context).size.width * .8,
                    color: Colors.grey[300],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                    child: Row(
                      children: [
                        Image.asset('assets/Chat Dots.png', width: 25, height: 25,),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text('Contact us', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black)),
                        const Spacer(),
                        const Icon(Icons.arrow_forward_ios, size: 18,),

                      ],
                    ),
                  ),
                  Container(
                    height: 1,
                    width: MediaQuery.of(context).size.width * .8,
                    color: Colors.grey[300],
                  ),
                  GestureDetector(
                    onTap: () {
                      FirebaseAuth.instance.signOut().then((value) {
                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const SignIn(),), (route) => false);
                      });
                    },
                    child: const Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                      child: Row(
                        children: [
                           Icon(Icons.logout, size: 22,),
                           SizedBox(
                            width: 12,
                          ),
                           Text('SignOut', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black)),
                           Spacer(),
                           Icon(Icons.arrow_forward_ios, size: 18,),

                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 1,
                    width: MediaQuery.of(context).size.width * .8,
                    color: Colors.grey[300],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

    );
  }
}
