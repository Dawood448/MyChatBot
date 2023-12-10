import 'package:chatapp/view/chatscreen.dart';
import 'package:chatapp/view/settings.dart';
import 'package:flutter/material.dart';

class EmptyChatHistory2 extends StatefulWidget {
  const EmptyChatHistory2({super.key});

  @override
  State<EmptyChatHistory2> createState() => _EmptyChatHistory2State();
}

class _EmptyChatHistory2State extends State<EmptyChatHistory2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F9FF),
      appBar: AppBar(
        title: const Text(
          'IPA',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 17),
        ),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const ChatScreen()));
            },
            child: const Icon(
              Icons.add,
              color: Colors.blue,
              size: 25,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0),
            child: Row(
              children: [
                const Text('Showing last month activity', style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w500, fontSize: 14),
                ),
                const Spacer(),
                Image.asset('assets/Filter.png', width: 25, height: 25,),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              padding: const EdgeInsets.all(08),
              width: MediaQuery.of(context).size.width * .9,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        '112 points earned!',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Today, 12:34 PM',
                        style: TextStyle(
                            color: Color(0xff979797),
                            fontWeight: FontWeight.w400,
                            fontSize: 12),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Image.asset('assets/material-symbols-light_delete-outline.png', width: 25, height: 25,),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              padding: const EdgeInsets.all(08),
              width: MediaQuery.of(context).size.width * .9,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        '112 points earned!',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Today, 12:34 PM',
                        style: TextStyle(
                            color: Color(0xff979797),
                            fontWeight: FontWeight.w400,
                            fontSize: 12),
                      ),
                    ],
                  ),
                  Spacer(),
                  Image.asset('assets/material-symbols-light_delete-outline.png', width: 25, height: 25,),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              padding: const EdgeInsets.all(08),
              width: MediaQuery.of(context).size.width * .9,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        '112 points earned!',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Today, 12:34 PM',
                        style: TextStyle(
                            color: Color(0xff979797),
                            fontWeight: FontWeight.w400,
                            fontSize: 12),
                      ),
                    ],
                  ),
                  Spacer(),
                  Image.asset('assets/material-symbols-light_delete-outline.png', width: 25, height: 25,),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              padding: const EdgeInsets.all(08),
              width: MediaQuery.of(context).size.width * .9,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        '112 points earned!',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Today, 12:34 PM',
                        style: TextStyle(
                            color: Color(0xff979797),
                            fontWeight: FontWeight.w400,
                            fontSize: 12),
                      ),
                    ],
                  ),
                  Spacer(),
                  Image.asset('assets/material-symbols-light_delete-outline.png', width: 25, height: 25,),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              padding: const EdgeInsets.all(08),
              width: MediaQuery.of(context).size.width * .9,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        '112 points earned!',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Today, 12:34 PM',
                        style: TextStyle(
                            color: Color(0xff979797),
                            fontWeight: FontWeight.w400,
                            fontSize: 12),
                      ),
                    ],
                  ),
                  Spacer(),
                  Image.asset('assets/material-symbols-light_delete-outline.png', width: 25, height: 25,),
                ],
              ),
            ),
          ),
        ],
      ),
    
    );
  }
}
