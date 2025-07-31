import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:the_lerners/View/Registration/Screen/splash.dart';
import 'package:the_lerners/ViewModel/GetCurrentUser/get_user_data.dart';
import 'package:the_lerners/ViewModel/Registration/get_taken_courses.dart';
import 'firebase_options.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<GetUser>(
          create: (context) => GetUser(),
        ),
        ChangeNotifierProvider<GetTakenCourses>(
          create: (context) => GetTakenCourses(),
        ),
      ],
      child:
          const MaterialApp(debugShowCheckedModeBanner: false, home: Splash()),
    );
  }
}
