import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_lerners/Utilities/colors.dart';
import 'package:the_lerners/Utilities/style.dart';
import 'package:the_lerners/View/Home/Screen/course_content.dart';
import 'package:the_lerners/View/Home/Widget/custom_card.dart';
import 'package:the_lerners/View/Profile/Screen/profile.dart';
import 'package:the_lerners/View/Widgets/bottom_appbar.dart';
import 'package:the_lerners/ViewModel/Courses/courses.dart';
import 'package:the_lerners/ViewModel/GetCurrentUser/get_user_data.dart';
import 'package:the_lerners/ViewModel/Navigation/navigation.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    getData();
  }
// Getting current user data like id, email from firebase using provider statement
  bool loading = false;

  getData() async {
    setState(() {
      loading = true;
    });
    await Provider.of<GetUser>(context, listen: false).getCurrentUserData();
    setState(() {
      loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final getuser = Provider.of<GetUser>(context);
    return SafeArea(
      child: Stack(
        children: [
          Scaffold(
            backgroundColor: kWhiteColor,
            appBar: AppBar(
              backgroundColor: kbgcolor,
              foregroundColor: kfgcolor,
              title: const Text("The Learner's"), centerTitle: true,
              elevation: 0,
              // leading: Icon(Icons.),
              actions: [
                InkWell(onTap: () {
                  Navigation.naivgateToPage(context,const Profile());
                },
                  child: Container(
                    width: 40,
                    height: 40,
                    margin:
                        const EdgeInsets.only(right: 20.0, top: 10, bottom: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            image: AssetImage('assets/user.png'))),
                  ),
                )
              ],
            ),
            body: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    CustomCard(
                      name: "${getuser.currentUserData['username']}\t\t\t",
                    ),
                    Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 30),
                        child: Row(
                          children: [
                            Text(
                              "Popular Courses",
                              style:
                                  kHeadingTextStyle.copyWith(color: kbgcolor),
                            )
                          ],
                        )),
                    SizedBox(
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: Courses.popularCourses.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Navigation.naivgateToPage(
                                  context,
                                  CourseContent(
                                      title: Courses.popularName[index],
                                      language:
                                          Courses.popularLanguages[index]));
                            },
                            child: Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              height: 180,
                              width: 150,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          Courses.popularCourses[index]),
                                      fit: BoxFit.cover),
                                  color: kbgcolor,
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                          );
                        },
                      ),
                    ),
                    Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 30),
                        child: Row(
                          children: [
                            Text(
                              "Premium Courses",
                              style:
                                  kHeadingTextStyle.copyWith(color: kbgcolor),
                            )
                          ],
                        )),
                    SizedBox(
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: Courses.premiumCourses.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Navigation.naivgateToPage(
                                  context,
                                  CourseContent(
                                      title: Courses.premiumName[index],
                                      language:
                                          Courses.premiumLanguages[index]));
                            },
                            child: Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              height: 180,
                              width: 150,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          Courses.premiumCourses[index]),
                                      fit: BoxFit.cover),
                                  color: kbgcolor,
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                          );
                        },
                      ),
                    ),
                    Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 30),
                        child: Row(
                          children: [
                            Text(
                              "Long Courses",
                              style:
                                  kHeadingTextStyle.copyWith(color: kbgcolor),
                            )
                          ],
                        )),
                    SizedBox(
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: Courses.longCourses.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Navigation.naivgateToPage(
                                context,
                                CourseContent(
                                    title: Courses.longName[index],
                                    language: Courses.longLanguages[index]),
                              );
                            },
                            child: Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              height: 180,
                              width: 150,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          Courses.longCourses[index]),
                                      fit: BoxFit.cover),
                                  color: kbgcolor,
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    )
                  ],
                ),
              ),
            ),
            bottomNavigationBar: const MyBottomAppBar(currentIndex: 0),
          ),
          loading
              ? Container(
                  color: Colors.black54,
                  child: const Center(
                      child: CircularProgressIndicator(
                    color: kbgcolor,
                  )),
                )
              : Container(),
        ],
      ),
    );
  }
}
