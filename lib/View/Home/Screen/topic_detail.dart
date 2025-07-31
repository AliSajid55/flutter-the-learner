import 'package:flutter/material.dart';
import 'package:the_lerners/Utilities/colors.dart';
// import 'package:the_lerners/View/Registration/Widgets/submit_button.dart';

class TopicDetail extends StatefulWidget {
  const TopicDetail({super.key, required this.topic});
  final Map topic;

  @override
  State<TopicDetail> createState() => _TopicDetailState();
}

class _TopicDetailState extends State<TopicDetail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.topic['topic'],style:const TextStyle(fontFamily: 'Rubik-Regular'),),
          centerTitle: true,
          backgroundColor: kbgcolor,
          foregroundColor: kfgcolor,
          elevation: 0,
        ),
        body: ListView(
          children: [
            Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    margin: const EdgeInsets.only(bottom: 100),
                child:  Column(
                  children: [
                    Text(
                      widget.topic['para']!=''?widget.topic['para']:'',
                      style:const TextStyle(fontSize: 18,fontFamily: 'Rubik-Regular',),
                    ),
                   const SizedBox(height: 20,),
                   widget.topic['img']!=''? Image.network(widget.topic['img']):const Text('')
                  ],
                )),
          ],
        ),
        // floatingActionButton:
        //     SubmitButton(onPressed: () {}, text: 'Mark as Read'),
      ),

      //  ElevatedButton.icon(onPressed: (){},style: ElevatedButton.styleFrom(
      //   backgroundColor: kBlackColor,
      //   foregroundColor: kGreenColor
      // ), label:const Text("Mark as read"), icon:const Icon(Icons.check,color: kGreenColor,size: 24,),
      // ),
      // ),
    );
  }
}
