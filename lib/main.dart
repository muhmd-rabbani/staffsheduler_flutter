import 'package:flutter/material.dart';
import 'package:staffscheduler/Complaint.dart';
import 'package:staffscheduler/Editprofile.dart';
import 'package:staffscheduler/Leaverequest.dart';
import 'package:staffscheduler/Notification.dart';
import 'package:staffscheduler/Upcomingshifts.dart';
import 'package:staffscheduler/bottom%20bar.dart';
import 'package:staffscheduler/dashboard.dart';
import 'package:staffscheduler/department.dart';
import 'package:staffscheduler/login.dart';
import 'package:staffscheduler/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home:  BottomNavigation()
    );
  }
}
