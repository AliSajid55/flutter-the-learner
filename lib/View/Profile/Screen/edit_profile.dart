import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:the_lerners/Utilities/colors.dart';
import 'package:the_lerners/View/Profile/Screen/profile.dart';
import 'package:the_lerners/View/Widgets/bottom_appbar.dart';
import 'package:the_lerners/View/Widgets/verfication_message_display.dart';
import 'package:the_lerners/ViewModel/Navigation/navigation.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController nameController = TextEditingController();
  String userID = '';
  String name = '';
  String userImageUrl = '';
  bool imageloaded = false;
  File? imagePath;
  bool loading = false;
  @override
  void initState() {
    super.initState();
    getImageUrl();
  }

//getting user image
  getImageUrl() async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      userImageUrl = '${preferences.getString('userProfileImage')}';
      userID = '${preferences.getString("userId")}';
      name = '${preferences.getString("userName")}';

      imageloaded = true;
    });
  }

//picking image from gallery

  pickImageFromGallery() async {
    try {
      ImagePicker picker = ImagePicker();
      final XFile? imagefile = await picker.pickImage(
          source: ImageSource.gallery, maxHeight: 500, maxWidth: 500);
      setState(() {
        imagePath = File(imagefile!.path);
      });
    } catch (e) {
      if (e.toString().contains('Null check operator used on a null value')) {
        
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(e.toString())),
        );
      }
    }
  }

//update in firebase
  updateUserData() async {
    try {
      final Reference storageReference = FirebaseStorage.instance.ref();
      final Reference reference = storageReference.child(userID);
//getting download url

      String updatedName = '';
      String updatedImage = '';
      if (nameController.text == '' && imagePath != null) {
        final TaskSnapshot snapshot = await reference
            .putFile(imagePath as File); //adding file to that reference
        final String imageUrl = await snapshot.ref.getDownloadURL();
        updatedImage = imageUrl;
        updatedName = name;
      } else if (imagePath == null && nameController.text != '') {
        updatedImage = userImageUrl;
        updatedName = nameController.text;
      } else if (nameController.text != '' && imagePath != null) {
        final TaskSnapshot snapshot = await reference
            .putFile(imagePath as File); //adding file to that reference
        final String imageUrl = await snapshot.ref.getDownloadURL();
        updatedImage = imageUrl;
        updatedName = nameController.text;
      }
      
      FirebaseFirestore.instance
          .collection('Authuntication') // Replace with your collection name
          .doc(userID) // Provide the user's document ID
          .update({
        'url': updatedImage,
        'username': updatedName,
      });

      final SharedPreferences preferences =
          await SharedPreferences.getInstance();
      setState(() {
        preferences.setString('userProfileImage', updatedImage);
        preferences.setString('userName', updatedName);
      });
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.toString())),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Scaffold(
        backgroundColor: kWhiteColor,
        appBar: AppBar(
          title: const Text("Manage Your Profile"),
          foregroundColor: kbgcolor,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: kbgcolor,
                  radius: 60,
                  backgroundImage: imageloaded
                      ? imagePath != null
                          ? FileImage(imagePath as File)
                              as ImageProvider<Object>?
                          : NetworkImage(userImageUrl)
                      : null,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: kbgcolor,
                          borderRadius: BorderRadius.circular(5)),
                      child: InkWell(
                        onTap: () {
                          pickImageFromGallery();
                        },
                        child: const Icon(
                          Icons.camera_alt_outlined,
                          size: 24,
                          color: kfgcolor,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextField(
                        cursorColor: kGreyColor,
                        controller: nameController,
                        decoration: InputDecoration(
                          
                          hintText: name,
                          prefixIcon: const Icon(Icons.person),
                          prefixIconColor: kGreyColor,
                          border: const OutlineInputBorder(borderSide: BorderSide(color: kbgcolor)),
                          focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: kbgcolor)),
                        ),
                        
                      ),

                      const SizedBox(
                        height: 30,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              fixedSize: Size.fromWidth(
                                  MediaQuery.of(context).size.width * 1),
                              backgroundColor: kbgcolor,
                              foregroundColor: kfgcolor),
                          onPressed: () async {
                            setState(() {
                              loading = true;
                            });
                            FocusManager.instance.primaryFocus?.unfocus();
                            if (imagePath != null ||
                                nameController.text != '') {
                              await updateUserData();
                              setState(() {
                                loading = false;
                              });
                              // ignore: use_build_context_synchronously
                              Navigation.naivgateToPage(
                                  context,
                                  const VerificationMessage(
                                      message:
                                          'Congratulations\nYour Profile has been updated Successfully ',
                                      mystatefulWidget: Profile()));
             
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text(
                                        'you have not updated anyThing yet!')),
                              );
                              setState(() {
                                loading = false;
                              });
                            }
                          },
                          child: const Text("Update")),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: const MyBottomAppBar(
          currentIndex: 2,
        ),
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
    ]);
  }
}
