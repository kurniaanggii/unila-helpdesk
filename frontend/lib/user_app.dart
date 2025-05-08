import 'package:flutter/material.dart';
import 'screen/user/dashboard_user.dart';

void main() {
  runApp(const UserApp());
}

class UserApp extends StatelessWidget {
  const UserApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User Helpdesk TIK Unila',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DashboardUser(), // Arahkan langsung ke dashboard user
    );
  }
}
