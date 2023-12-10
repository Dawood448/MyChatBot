import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final String message;
  final int mode; //1 or 2 => 1 for user and 2 for assistant
  final int index;
  final int currentChatToAnimate;
  const ChatBubble({super.key, required this.message, required this.mode, required this.index, required this.currentChatToAnimate});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: Row(
            children: [
              mode == 2 ?
              Image.asset(
               "assets/Rectangle 11.png",
                width: 25,
                height: 25,
              ) :  Container(
                height: 25,
                width: 25,


                decoration: BoxDecoration(
                    color: Colors.blueGrey.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Center(child: Icon(Icons.keyboard_alt_outlined, color: Colors.white, size: 18,))),
              const SizedBox(
                width: 6,
              ),
               Text(
               mode == 2 ?  'API' : "USER",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 14),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width ,
          ),
          child: Padding(
            padding: EdgeInsets.only(left: mode == 1 ? 57 : 55, right: 20),
            child: Align(
              alignment: Alignment.topLeft,
              child: (mode == 2 && index == currentChatToAnimate) ? AnimatedTextKit(
                totalRepeatCount: 1,

                animatedTexts: [
                  TyperAnimatedText(message,  textStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 14),  textAlign: TextAlign.left,)
                ],

              ) : Text(
               message,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 14),
                textAlign: TextAlign.left,
              ) ,
            ),
          ),
        ),
      ],
    );
  }
}
