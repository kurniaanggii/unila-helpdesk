import 'package:flutter/material.dart';
import 'package:frontend/screen/admin/dashboard_admin.dart';
import 'screen/admin/dashboard_admin.dart';

class AdminApp extends StatelessWidget {
  const AdminApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Unila Helpdesk - Admin',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const HomeScreen(),
    );
  }
}
