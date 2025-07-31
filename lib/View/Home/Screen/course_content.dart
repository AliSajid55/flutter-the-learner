import 'package:flutter/material.dart';
import 'package:the_lerners/Utilities/colors.dart';
import 'package:the_lerners/View/Home/Screen/take_quiz.dart';
import 'package:the_lerners/View/Home/Screen/topic_detail.dart';
import 'package:the_lerners/ViewModel/Navigation/navigation.dart';

class CourseContent extends StatefulWidget {
  const CourseContent({super.key, required this.title, required this.language});
  final String title;
  final List language;
  @override
  State<CourseContent> createState() => _CourseContentState();
}

class _CourseContentState extends State<CourseContent> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(fontFamily: 'Rubik-Regular'),
        ),
        centerTitle: true,
        backgroundColor: kbgcolor,
        foregroundColor: kfgcolor,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: (widget.language[0].length + 1),
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                tileColor: index == (widget.language[0].length)? kbgcolor:kWhiteColor,
                contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                onTap: () {
                  index == (widget.language[0].length)
                      ? Navigation.naivgateToPage(
                          context,
                          Quiz(
                            title: widget.title,
                            quiz: widget.language[1],
                          ))
                      : Navigation.naivgateToPage(
                          context, TopicDetail(topic: widget.language[0][index]));
                },
                title: index == (widget.language[0].length)
                    ? const Text(
                        'Take Quiz',
                        style: TextStyle(
                          color: kfgcolor,
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            fontFamily: 'Rubik-Regular'),
                      )
                    : Text(
                        '${widget.language[0][index]['topic']} ${index + 1}',
                        style: const TextStyle(
                          color: kbgcolor,
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            fontFamily: 'Rubik-Regular'),
                      ),
                trailing:  Icon(
                  Icons.keyboard_arrow_right_rounded,
                  color: index == (widget.language[0].length)?kfgcolor: kbgcolor,
                ),
              ),
              Divider(
                height: 3,
                color: kGreyColor.shade300,
              )
            ],
          );
        },
      ),
    );
  }
}
