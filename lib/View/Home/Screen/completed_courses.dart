import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_lerners/Utilities/colors.dart';
import 'package:the_lerners/Utilities/style.dart';
import 'package:the_lerners/View/Profile/Screen/profile.dart';
import 'package:the_lerners/ViewModel/Courses/courses.dart';
import 'package:the_lerners/ViewModel/Registration/get_taken_courses.dart';

class CompletedCourses extends StatefulWidget {
  const CompletedCourses({super.key});

  @override
  State<CompletedCourses> createState() => _CompletedCoursesState();
}

class _CompletedCoursesState extends State<CompletedCourses> {
  @override
  void initState() {
    super.initState();
    getData();
  }
  bool loading=false;

getData()async{
  setState(() {
    loading=true;
  });
  await  Provider.of<GetTakenCourses>(context, listen: false).getCourseList();
  setState(() {
    loading=false;
  });
}
  @override
  Widget build(BuildContext context) {
    final getList = Provider.of<GetTakenCourses>(context);

    return WillPopScope(onWillPop:  ()async {
      return false;
    },
      child: Stack(
        children: [
          Scaffold(
              backgroundColor: kWhiteColor,
              appBar: AppBar(
                leading: GestureDetector(onTap:() {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const Profile(),));
                },child:const Icon(Icons.arrow_back)),
                title: const Text(
                  "Attempted Courses",
                  style: kHeadingTextStyle,
                ),
                centerTitle: true,
                elevation: 0,
                backgroundColor: kbgcolor,
                foregroundColor: kfgcolor,
              ),
              body: ListView.builder(
                  itemCount: getList.currentList.length,
                  itemBuilder: (context, index) {
                    String name = getList.currentList[index]['coursename'];
                    double score = getList.currentList[index]['score'];
                    int position = -1;
                    String url = '';
                    if (Courses.popularName.contains(name)) {
                      position =
                          Courses.popularName.indexWhere((item) => item == name);
                      url = Courses.popularCourses[position];
                    } else if (Courses.longName.contains(name)) {
                      position = Courses.longName.indexWhere((item) => item == name);
                      url = Courses.longCourses[position];
                    } else {
                      position =
                          Courses.premiumName.indexWhere((item) => item == name);
                      url = Courses.premiumCourses[position];
                    }
    
                    return Container(
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          color: kWhiteColor,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black38,
                                offset: Offset(.5, .7),
                                blurRadius: 5,
                                spreadRadius: .7,
                                blurStyle: BlurStyle.inner),
                            BoxShadow(
                                color: Colors.black12,
                                offset: Offset(-.7, -.7),
                                blurRadius: 5,
                                spreadRadius: .7,
                                blurStyle: BlurStyle.inner),
                          ]),
                      height: 200,
                      margin:
                          const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 20),
                            width: 150,
                            height: 200,
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                image: DecorationImage(
                                    image: AssetImage(url), fit: BoxFit.cover)),
                          ),
                          Expanded(
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                   Text(
                                    "You Have Secured ",
                                    style: kHeadingTextStyle.copyWith(color: kbgcolor),
                                  ),
                                  Text(
                                    "${score.toStringAsFixed(2)} %",
                                    style: kHeadingTextStyle.copyWith(fontSize: 28,color: kbgcolor),
                                  ),
                                   Text(
                                    " marks in last attempt ",
                                    softWrap: true,
                                    style: kHeadingTextStyle.copyWith(color: kbgcolor),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  })),


        loading
            ? Container(
                color: Colors.black54,
                child: const Center(
                    child: CircularProgressIndicator(
                  color: kbgcolor,
                )),
              )
            : Container(),        ],
      ),
    );
  }
}
