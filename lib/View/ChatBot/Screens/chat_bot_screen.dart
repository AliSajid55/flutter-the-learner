import 'package:chat_gpt_sdk/chat_gpt_sdk.dart';
import 'package:flutter/material.dart';
import 'package:the_lerners/Utilities/colors.dart';
import 'package:the_lerners/View/ChatBot/Screens/chat_message.dart';
import 'package:the_lerners/View/ChatBot/Screens/three_dots.dart';
import 'package:the_lerners/View/Widgets/bottom_appbar.dart';

class ChatBotScreen extends StatefulWidget {
  const ChatBotScreen({super.key});

  @override
  State<ChatBotScreen> createState() => _ChatBotScreenState();
}

class _ChatBotScreenState extends State<ChatBotScreen> {
  final TextEditingController controller = TextEditingController();
  final List<ChatMessage> _messages = [];
  bool isTyping = false;
//

  late OpenAI? chatGPT;

  @override
  void initState() {
    chatGPT = OpenAI.instance.build(
        token: 'sk' + 'zBvhm3BJstcJs9NpuHmHT3BlbkFJlsdCPVTRIVqsHX4FEHmR',
        baseOption: HttpSetup(receiveTimeout: const Duration(seconds: 15)));
    super.initState();
  }

  @override
  void dispose() {
    // chatGPT.close();
    super.dispose();
  }
//check user messege is empty or not
  void _sendMessage() async {
    if (controller.text.isEmpty) return;
    ChatMessage message = ChatMessage(
      text: controller.text,
      sender: "user",
    );
//create new message for user on screen
    setState(() {
      _messages.add(message);
      isTyping = true;
    });

    controller.clear();
//create question which we want to ask from chatbot, and chatbot give answer and it into list
    final request = CompleteText(
        prompt: message.text, model: TextDavinci3Model(), maxTokens: 200);
    try {
      final response = await chatGPT!.onCompletion(request: request);

      insertNewData(
        response!.choices[0].text,
      );
    } catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.toString())));
      setState(() {
        isTyping = false;
      });
    }
  }
  //user ko show krny k liy chatbot k message in list

  void insertNewData(
    String response,
  ) {
    ChatMessage botMessage = ChatMessage(
      text: response,
      sender: "bot",
    );

    setState(() {
      isTyping = false;
      _messages.add(botMessage);
    });
  }

//
  Widget _buildTextComposer() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: controller,
              onSubmitted: (value) => _sendMessage(),
              decoration: const InputDecoration.collapsed(
                  hintText: "Question/description"),
            ),
          ),
          ButtonBar(
            children: [
              IconButton(
                icon: const Icon(Icons.send,color: kbgcolor,),
                onPressed: () {
                  _sendMessage();
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kWhiteColor,
        appBar: AppBar(
          backgroundColor: kbgcolor,
          foregroundColor: kfgcolor,
          elevation: 0,
          title: const Text('The Lerners ChatBot'),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Column(
            children: [
              Flexible(
                  child: ListView.builder(
                reverse: true,
                padding: const EdgeInsets.all(8),
                itemCount: _messages.length,
                itemBuilder: (context, index) {
                  return _messages[((_messages.length) - (index + 1))];
                },
              )),
              if (isTyping) const ThreeDots(),
              const Divider(
                height: 1.0,
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: _buildTextComposer(),
              )
            ],
          ),
        ),
            bottomNavigationBar:const MyBottomAppBar(currentIndex: 2),

        );
  }
}
