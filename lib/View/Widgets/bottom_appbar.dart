import 'package:flutter/material.dart';
import 'package:the_lerners/Utilities/colors.dart';
import 'package:the_lerners/View/ChatBot/Screens/chat_bot_screen.dart';
import 'package:the_lerners/View/Home/Screen/home.dart';
import 'package:the_lerners/View/Profile/Screen/profile.dart';

class MyBottomAppBar extends StatefulWidget {
  final int currentIndex;

  const MyBottomAppBar({
    required this.currentIndex,
    super.key,
  });

  @override
  State<MyBottomAppBar> createState() => _MyBottomAppBarState();
}

class _MyBottomAppBarState extends State<MyBottomAppBar> {
  @override
 
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      
      child:  BottomNavigationBar(
        backgroundColor: kbgcolor,
        type: BottomNavigationBarType.fixed,
        
        items:const [
          
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.person_pin),label: 'Profile'),
        BottomNavigationBarItem(icon: Icon(Icons.chat),label: 'chat'),

      
        ],
        currentIndex: widget.currentIndex,
        selectedItemColor: kfgcolor,
        unselectedItemColor: kWhiteColor,
        showUnselectedLabels: true,
        onTap: (value) {
          if(value==0){
            widget.currentIndex!=value?
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return const Home();
            },)):null;
          }
          
          else if(value==1){
            widget.currentIndex!=value?
               Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return const Profile();
            },)):null;
          }
          else if(value==2){
            widget.currentIndex!=value?
               Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return const ChatBotScreen();
            },)):null;
          }
          
        },
        ),
        
        );
  }
}