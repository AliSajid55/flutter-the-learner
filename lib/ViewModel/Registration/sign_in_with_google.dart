import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:the_lerners/View/Home/Screen/home.dart';
import 'package:the_lerners/ViewModel/Navigation/navigation.dart';
import 'package:the_lerners/ViewModel/Registration/local_storage.dart';
import 'package:the_lerners/ViewModel/Registration/store_data_in_firestore.dart';

class GoogleSignUp {
  //signInUsingGoogle
  static signInUsingGoogle(
      {required BuildContext context,
      required VoidCallback setstate}) async {
    try {
      await GoogleSignIn()
          .signOut(); //to signout existing user so we can select another account
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      if (googleUser != null) {
        // Obtain the auth details from the request
        final GoogleSignInAuthentication googleAuth =
            await googleUser.authentication;

        // Create a new credential
        final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );
        //sign in to firebase
        final UserCredential userCredential =
            await FirebaseAuth.instance.signInWithCredential(credential);
        //getting required data like picture name email etc;

        final AdditionalUserInfo? additionalUserInfo =
            userCredential.additionalUserInfo;
        final String photoUrl =
            await additionalUserInfo!.profile!['picture'] as String;
        final String email =
            await additionalUserInfo.profile!['email'] as String;
        final String name = await additionalUserInfo.profile!['name'] as String;
        final data = {'username': name, 'email': email, 'url': photoUrl};

        //getting userid
         String userUid = userCredential.user!.uid;
        bool userExist= await doesUserExist(userUid);
        //if user not then store data
        if (!userExist) {
        await StoringData().storingDataInFirebase(
            uid: userCredential.user!.uid,
            data: data,
            collectionName: 'Verified');
          
        }
        //we want to store data locally for further use
          await LocalStorage.storingData(userCredential.user!.uid);


        // ignore: use_build_context_synchronously
          Navigation.naivgateToPage(context, const Home());
        setstate(); //setting loading to false
      } else {
        // ignore: avoid_print
        print("user not found");
        setstate();
      }
    } catch (e) {
      Navigation.showMessage(context, e.toString());
      setstate(); //setting loading to false
    }
  }

  //check if user already exist
  
static Future<bool> doesUserExist(String userUid) async {
  // Query Firestore to check if the user with the given UID exists.
  final DocumentSnapshot snapshot =
      await FirebaseFirestore.instance.collection('Verified').doc(userUid).get();
  // If the document exists, the user exists.
  return snapshot.exists;
}

}