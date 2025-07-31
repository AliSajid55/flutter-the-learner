import 'package:flutter/material.dart';
import 'package:the_lerners/Utilities/colors.dart';

class ChatMessage extends StatelessWidget {
  const ChatMessage(
      {super.key,
      required this.text,
      required this.sender,
      });

  final String text;
  final String sender;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(margin:const EdgeInsets.only(right: 10),
            width: 50,height: 50,
            decoration: BoxDecoration(
                        color:sender=='bot'? Colors.deepPurple.shade400:kbgcolor,
    
              borderRadius: BorderRadius.circular(10)),
            child: Center(child: Text(sender,style:const TextStyle(color: kfgcolor)))),
    
          Expanded(
            child:Text(text,style:const TextStyle(color: kbgcolor),),
                
          ),
        ],
      ),
    );
  }
}