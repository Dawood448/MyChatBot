import 'dart:developer';

import 'package:chatapp/GptApi.dart';
import 'package:chatapp/model/ChatModel.dart';
import 'package:chatapp/widgets/chatBubble.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';


class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  var chatController = TextEditingController();
  List<ChatModel> chatList = [];
  GptApi apiController = GptApi();
  bool isLoadingChat = false;
  int currentChatToAnimate = -1;
  final ScrollController _controller = ScrollController();
   List<ChatModel>? chatHistory = [];
   late Box<ChatModel> box;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initializeBox();

    // initializeSharedPreference();
  }

  void initializeBox() async{
    box = await Hive.openBox<ChatModel>("chatHistory");
    log(box.values.length.toString());
    box.values.map((e) => log("${e.message}")).toList();
    // await box.clear();
  }

// This is what you're looking for!
  void _scrollDown() {
    _controller.animateTo(
      _controller.position.maxScrollExtent,
      duration: const Duration(seconds: 2),
      curve: Curves.fastOutSlowIn,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F9FF),
      appBar: AppBar(
        leading: const Icon(
          Icons.view_headline_sharp,
          color: Colors.blue,
        ),
        title: const Text(
          'About Lunch',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 17),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: chatList.isEmpty ? ListView(

              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.12,),
                Center(
                    child: Image.asset(
                      'assets/Logo2.png',
                      width: 300,
                      height: 300,
                    )),
                const Center(
                  child: Text(
                    'Capabilities',
                    style: TextStyle(
                        color: Color(0xff979797),
                        fontWeight: FontWeight.w700,
                        fontSize: 17),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * .8,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text(
                      'Answer all your questions.\n(Just ask me anything you like!)',
                      style: TextStyle(
                        color: Color(0xff979797),
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ) : ListView(
              controller: _controller,
              children: [


                ...chatList.asMap().entries.map((e) {
                  return Column(
                    children: [
                      const SizedBox(
                        height: 7,
                      ),
                      ChatBubble(message: e.value.message, mode: e.value.mode, index: e.key, currentChatToAnimate: currentChatToAnimate,),
                      const SizedBox(
                        height: 7,
                      ),
                    ],
                  );
                }),




                  if(isLoadingChat)
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 60),
                      child: LoadingAnimationWidget.staggeredDotsWave(
                      color: const Color(0xff0C8CE9),
                      size: 35,
                      ),
                    ),
                  ),
                  ]
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextFormField(
                controller: chatController,
                decoration: InputDecoration(
                  hintText: 'Ask me anything...',
                  hintStyle: const TextStyle(
                      color: Color(0xff979797),
                      fontWeight: FontWeight.w400,
                      fontSize: 15),
                  filled: true,
                  fillColor: Colors.white,
                  suffixIcon: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset('assets/Right Content.png', width: 25, height: 25,),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(child: Image.asset('assets/_Messages-sendIcon.png', width: 25, height: 25,), onTap: () async {
                        if(chatController.text.trim().isNotEmpty){

                          String currentMessageFromUser = "";

                          setState(() {
                            isLoadingChat = true;
                          });

                          /*if(chatList.length > 2) {
                            // move the control to end of list
                            _scrollDown();
                          }*/
                          // adding user response to list
                          chatList.add(ChatModel(message: chatController.text.toString(), mode: 1));
                          currentChatToAnimate++;
                          currentMessageFromUser = chatController.text.toString();
                          chatController.clear();
                          if(chatList.length > 2) {
                            WidgetsBinding.instance.addPostFrameCallback((_) {
                              _scrollDown();
                            });
                          }
                            log("not empty box");
                          chatHistory?.clear();
                            // chatHistory?.map((e) => log("${e.mode} ${e.message}")).toList();
                          box.values.toList().map((e) => chatHistory?.add(e)).toList();
                          log(chatHistory!.length.toString());
                          // calling chatgpt api
                          apiController.getresponse(chatList, chatHistory ?? []).then((value) async {
                           chatHistory?.add(ChatModel(message: currentMessageFromUser, mode: 1));
                           chatHistory?.add(value);
                            // first removing previous chat history and again storing new history in shared Preference
                            await box.clear();
                            await box.addAll(chatHistory!.toList());
                            chatHistory?.clear();

                            currentChatToAnimate++;
                            log("response");
                            if(value.mode != -1) {
                              // adding assistant response to list
                              chatList.add(value);
                            } else{
                              // on some sort of error
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(value.message)));
                            }
                            WidgetsBinding.instance.addPostFrameCallback((_) {
                              _scrollDown();
                            });
                            setState(() {
                              isLoadingChat = false;
                            });
                            // log(value.message);
                          });
                        }
                      },),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20, vertical: 10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Color(0xff979797),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Color(0xff979797),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Color(0xff979797),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20,),
        ],
      ),
    );
  }
}
