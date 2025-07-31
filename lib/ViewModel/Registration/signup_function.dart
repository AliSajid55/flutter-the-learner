import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:the_lerners/Model/ErrorMessage/error_messages.dart';
import 'package:the_lerners/View/Home/Screen/home.dart';
import 'package:the_lerners/View/Registration/Screen/login.dart';
import 'package:the_lerners/View/Widgets/verfication_message_display.dart';
import 'package:the_lerners/ViewModel/Registration/local_storage.dart';
import 'package:the_lerners/ViewModel/Registration/store_data_in_firestore.dart';
import '../Navigation/navigation.dart';

class SignUpClass {
  static signUpUser({
    required String email,
    required String username,
    required String password,
    required String url,
    required BuildContext context,
    required VoidCallback setstate,
  }) async {
    if (email != '' && username != '' && password != '' && url != '') {
      try {
        final FirebaseAuth auth = FirebaseAuth.instance;
        //creating user
        UserCredential userCredential = await auth
            .createUserWithEmailAndPassword(email: email, password: password);
        // sending verification email
        await userCredential.user!.sendEmailVerification();
        //storing data in unverified collection
        final data = {'email': email, 'username': username, 'url': url};
        await StoringData().storingDataInFirebase(
            uid: userCredential.user!.uid,
            data: data,
            collectionName: 'Unverified');

        setstate();
        //redirecting to login screen
        // ignore: use_build_context_synchronously
        Navigation.naivgateToPage(
            context,
            VerificationMessage(
                message: ErrorMessages.passwordResetMessage,
                mystatefulWidget: const Login()));
      } catch (e) {
        Navigation.showMessage(context, e.toString());

        setstate();
      }
    } else {
      Navigation.showMessage(context, ErrorMessages.emptyFieldMessage);

      setstate();
    }
  }

  /// ******************************************************************************************

  static signInUser({
    required String email,
    required String password,
    required BuildContext context,
    required VoidCallback setstate,
  }) async {
    if (email != '' && password != '') {
      try {
        final FirebaseAuth auth = FirebaseAuth.instance;

        //creating user
        UserCredential userCredential = await auth.signInWithEmailAndPassword(
            email: email, password: password);

        //moving data from delay to Authintication collection
        if (userCredential.user != null && userCredential.user!.emailVerified) {
          // ignore: use_build_context_synchronously
          await moveUserDataToVerifiedCollection(
              context: context,
              docId: userCredential.user!.uid,
              fromCol: 'Unverified',
              toCol: 'Verified');
          //storing userdata in local storage
          await LocalStorage.storingData(userCredential.user!.uid);

          setstate();
          // ignore: use_build_context_synchronously
          Navigation.naivgateToPage(context, const Home());
        } else {
          // ignore: use_build_context_synchronously
          ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("user is not verified")));
          setstate();
        }

        //redirecting to login screen
      } catch (e) {
        Navigation.showMessage(context, e.toString());
        setstate();
      }
    } else {
      Navigation.showMessage(context, ErrorMessages.emptyFieldMessage);
      setstate();
    }
  }

  /// *********************************************************************************

  static moveUserDataToVerifiedCollection(
      {required String docId,
      required BuildContext context,
      required String fromCol,
      required String toCol}) async {
    try {
      final FirebaseFirestore firestore = FirebaseFirestore.instance;
      await firestore
          .collection(fromCol)
          .doc(docId)
          .get()
          .then((snapshot) async {
        if (snapshot.exists) {
          // Move the user's data to the "verified" collection
          await firestore.collection(toCol).doc(docId).set(snapshot.data()!);
          // Delete the user's data from the "delay" collection
          await firestore.collection(fromCol).doc(docId).delete();
        }
      });
    } catch (e) {
      Navigation.showMessage(context, e.toString());
    }
  }

  ///***********************************************************************************
  static resetPassword(
      {required String email,
      required VoidCallback setstate,
      required BuildContext context}) async {
    try {
      final FirebaseAuth auth = FirebaseAuth.instance;

      await auth.sendPasswordResetEmail(email: email);
      setstate();
      // ignore: use_build_context_synchronously
      Navigation.naivgateToPage(
          context,
          VerificationMessage(
              message: ErrorMessages.passwordResetMessage,
              mystatefulWidget: const Login()));
    } catch (e) {
      Navigation.showMessage(context, e.toString());
      setstate();
    }
  }

  /// **************************************************************************************************
  static  signOut(BuildContext context) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    await auth.signOut();
    // Obtain shared preferences.
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.remove('userId');
    preferences.remove('userName');
    preferences.remove('userEmail');
    preferences.remove('userProfileImage');
    // ignore: use_build_context_synchronously
    Navigation.naivgateToPage(context, const Login());
  }
}
