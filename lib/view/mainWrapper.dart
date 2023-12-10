import 'package:chatapp/view/chatscreen.dart';
import 'package:chatapp/view/emptychathistory.dart';
import 'package:chatapp/view/emptychathistory2.dart';
import 'package:chatapp/view/settings.dart';
import 'package:flutter/material.dart';

class MainWrapper extends StatefulWidget {
  const MainWrapper({Key? key}) : super(key: key);

  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
  int index = 0;
  List<Widget> pages = [
    EmptyChat(),
    ChatScreen(),
    Settings()
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        pages[index],
        Positioned(
          bottom: 0,
          left: 20,
          right: 20,
          child: Container(
            height: 70,
            width: MediaQuery.of(context).size.width * .9,
            margin: const EdgeInsets.only(bottom: 20),
            decoration:  BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(100),
                ),
                border: Border.all(color: Colors.black87.withOpacity(0.2), width: 1)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                    onTap: (){
                      setState(() {
                        index = 0;
                      });
                    },
                    child: Image.asset('assets/Profile.png', width: 25, height: 25,)),
                GestureDetector(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ChatScreen(),));
                },child: Image.asset('assets/Group 279.png', height: 50, width: 80,)),
                GestureDetector(
                    onTap: (){
                     setState(() {
                       index = 2;
                     });
                    }, child: Image.asset('assets/Right Side.png', width: 25, height: 25,)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
