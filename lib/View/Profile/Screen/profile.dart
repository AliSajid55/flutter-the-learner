import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_lerners/Utilities/colors.dart';
import 'package:the_lerners/Utilities/style.dart';
import 'package:the_lerners/View/Home/Screen/completed_courses.dart';
import 'package:the_lerners/View/Profile/Screen/edit_profile.dart';
import 'package:the_lerners/View/Widgets/bottom_appbar.dart';
import 'package:the_lerners/ViewModel/GetCurrentUser/get_user_data.dart';
import 'package:the_lerners/ViewModel/Navigation/navigation.dart';
import 'package:the_lerners/ViewModel/Registration/signup_function.dart';
import 'package:url_launcher/url_launcher.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: kWhiteColor,
        appBar: AppBar(
          leading: const Icon(null),
          title: const Text(
            "Profile",
            style: kHeadingTextStyle,
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: kbgcolor,
          actions: [
            IconButton(
                onPressed: () {
                  SignUpClass.signOut(context);
                },
                icon: const Icon(
                  Icons.logout,
                  color: kfgcolor,
                )),
            const SizedBox(
              width: 10,
            )
          ],
        ),
        body: Consumer<GetUser>(
          builder: (context, getuser, child) {
            getuser.getCurrentUserData();
            return Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  height: 180,
                  width: double.maxFinite,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/profile.png'),
                        fit: BoxFit.cover),
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                          top: 220,
                        ),
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Center(
                                child: CircleAvatar(
                                    radius: 60,
                                    backgroundImage: NetworkImage(
                                      "${getuser.currentUserData['url']}",
                                    )),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              ListTile(
                                leading: const Icon(
                                  Icons.person,
                                  size: 25,
                                  color: kbgcolor,
                                ),
                                title: Text(
                                  "${getuser.currentUserData['username']}",
                                  style: const TextStyle(color: kbgcolor),
                                ),
                              ),
                              const Divider(
                                color: kbgcolor,
                                height: 0,
                              ),
                              ListTile(
                                leading: const Icon(
                                  Icons.email,
                                  size: 25,
                                  color: kbgcolor,
                                ),
                                title: Text(
                                  "${getuser.currentUserData['email']}",
                                  style: const TextStyle(color: kbgcolor),
                                ),
                              ),
                              const Divider(
                                color: kbgcolor,
                                height: 0,
                              ),
                              ListTile(
                                onTap: () {
                                  Navigation.naivgateToPage(
                                      context, const EditProfile());
                                },
                                leading: const Icon(
                                  Icons.edit_sharp,
                                  size: 25,
                                  color: kbgcolor,
                                ),
                                title: const Text(
                                  "Edit Profile",
                                  style: TextStyle(color: kbgcolor),
                                ),
                                trailing: const Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  size: 24,
                                  color: kbgcolor,
                                ),
                              ),
                              const Divider(
                                color: kbgcolor,
                                height: 0,
                              ),
                              ListTile(
                                onTap: () {
                                  Navigation.naivgateToPage(
                                      context, const CompletedCourses());
                                },
                                leading: const Icon(
                                  Icons.check,
                                  size: 25,
                                  color: kbgcolor,
                                ),
                                title: const Text(
                                  "Completed Courses",
                                  style: TextStyle(color: kbgcolor),
                                ),
                                trailing: const Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  size: 24,
                                  color: kbgcolor,
                                ),
                              ),
                              const Divider(
                                color: kbgcolor,
                                height: 0,
                              ),
                              ListTile(
                                onTap: () async {
                                  try {
                                    await launchUrl(Uri(
                                        scheme: 'mailto',
                                        path: 'thelearners4250@gmail.com'));
                                  } catch (e) {
                                    Navigation.showMessage(
                                        context, e.toString());
                                  }
                                },
                                leading: const Icon(
                                  Icons.support_agent,
                                  size: 25,
                                  color: kbgcolor,
                                ),
                                title: const Text(
                                  "Contect Us",
                                  style: TextStyle(color: kbgcolor),
                                ),
                                trailing: const Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  size: 24,
                                  color: kbgcolor,
                                ),
                              ),
                              const Divider(
                                color: kbgcolor,
                                height: 0,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
        bottomNavigationBar: const MyBottomAppBar(currentIndex: 1),
      ),
    );
  }
}
