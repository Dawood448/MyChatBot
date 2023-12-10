import "dart:developer";

import "package:chatapp/model/ChatModel.dart";
import "package:http/http.dart" as http;
import "dart:convert";

const String OpenAiKey = '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';


class GptApi{
  Future<ChatModel> getresponse(List<ChatModel> model, List<ChatModel> previousUserChat) async {
    List<Map<String, String>> messages = [];

  /*  // adding data from history
    for(int i = 0; i<previousUserChat.length; i++){
      messages.add({
        "role": previousUserChat[i].mode == 2 ? "assistant" : "user",
        "content": previousUserChat[i].message
      });
    }


    // adding current session chat history
    for(int i = 0; i<model.length; i++){
      messages.add({
        "role": model[i].mode == 2 ? "assistant" : "user",
        "content": model[i].message
      });
    }


    // removing all the dublicates
    List<Map<String, String>> uniqueMessages = [];
    Set<String> uniqueContentSet = Set();

    uniqueMessages.add({
      "role" : "system",
      "content" : "remember the following user details. my name is abdulrehman. my lisence number is 1010"
    });

    for (var message in messages) {
      var content = message['content'];
      if (!uniqueContentSet.contains(content)) {
        uniqueContentSet.add(content!);
        uniqueMessages.add(message);
      }
    }


    log(uniqueMessages.toString());
*/




    final res = await http.post(
      Uri.parse('https://api.openai.com/v1/chat/completions'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $OpenAiKey',
      },
      body: jsonEncode({
        "model": "gpt-3.5-turbo",
        "messages": [{
          "role" : "user",
          "content" : model.last.message
        }],

      }),
    );

    if (res.statusCode == 200) {
      String content =
      jsonDecode(res.body)['choices'][0]['message']['content'];
      return ChatModel(message: content, mode: 2);
    }
    log(res.body);
    return ChatModel(message: "Failed to process your request", mode: -1);
  }

}