import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:the_lerners/ViewModel/Navigation/navigation.dart';

class UpdateResult {
  static Future<void> updateUserData(
      {required String userid,
      required String languageName,
      required double score,
      required BuildContext context}) async {
    // Step 1: Get the reference to the document you want to update
    final DocumentReference userRef =
        FirebaseFirestore.instance.collection('Verified').doc(userid);
    // Step 2: Create the map with previous and new courses data
    Map<String, dynamic> takencourses = {
      'coursename': languageName,
      "score": score,
    };
    bool alreadyTaken = false;
    try {
      DocumentSnapshot docSnapshot = await userRef.get();
      if (docSnapshot.exists) {
        // Get the current list of maps from the 'takescourse' field if exist

        List<dynamic>? currentList =
            (docSnapshot.data() as Map<String, dynamic>)['takencourse'];

        // If 'takescourse' field doesn't exist or is null, initialize it as an empty list
        currentList ??= [];
        // Add the new map to the list
        for (var i = 0; i < currentList.length; i++) {
          if (currentList[i]['coursename'] == languageName) {
            currentList[i]= takencourses;
            alreadyTaken = true;
            break;
          }
        }
        if (!alreadyTaken) {
          currentList.add(takencourses);
        }
        // Update the 'takescourse' field with the updated list
        await userRef.update({'takencourse': currentList});
        // ignore: use_build_context_synchronously
        Navigation.showMessage(context, 'Result Submitted Successfully');
      } else {
        await userRef.set({
          'takencourse': [takencourses]
        });
      }
    } catch (e) {
      if (kDebugMode) {
        print("Error updating document: $e");
      }
    }
  }
}
