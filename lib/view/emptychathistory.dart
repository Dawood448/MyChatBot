import 'dart:developer';
import 'package:chatapp/view/emptychathistory2.dart';
import 'package:chatapp/view/settings.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import '../model/ChatModel.dart';
import 'chatscreen.dart';

class EmptyChat extends StatefulWidget {
  const EmptyChat({super.key});

  @override
  State<EmptyChat> createState() => _EmptyChatState();
}

class _EmptyChatState extends State<EmptyChat> {
  late Box<ChatModel> box;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initializeBox();

    // initializeSharedPreference();
  }

  void initializeBox() async {
    box = await Hive.openBox<ChatModel>("chatHistory");
    log(box.values.length.toString());
    box.values.map((e) => log(e.message)).toList();
    // await box.clear();
  }

  Future<List<String>> getChatHistory() async {
    List<String> messages = [];

    try {
      box = await Hive.openBox<ChatModel>("chatHistory");

      // Loop through the values and collect messages
      for (var e in box.values) {
        messages.add(e.message);
      }

      // Uncomment the line below to clear the box
      // await box.clear();
    } catch (e) {
      log('Error initializing box: $e');
    }

    return messages;
  }

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
            onTap: () {
              // Navigator.push(context, MaterialPageRoute(builder: (context) => const ChatScreen()));
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
      body: FutureBuilder<List<String>>(
        future:
            getChatHistory(), // Assuming getChatHistory() fetches chat history as a List<String>
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
                child:
                    CircularProgressIndicator()); // Show a loading indicator while fetching data
          } else if (snapshot.hasError) {
            return Center(
                child: Text(
                    'Error: ${snapshot.error}')); // Display error if encountered
          } else {
            List<String>? chatMessages = snapshot.data;

            if (chatMessages != null && chatMessages.isNotEmpty) {
              return ListView.builder(
                itemCount: chatMessages.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(chatMessages[index]),
                  );
                },
              );
            } else {
              // If chat history is empty, display a message
              return const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      'Empty',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 17),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Text(
                      'You have no history.',
                      style: TextStyle(
                          color: Color(0xff979797),
                          fontWeight: FontWeight.w400,
                          fontSize: 15),
                    ),
                  ),
                ],
              );
            }
          }
        },
      ),
    );
  }
}
