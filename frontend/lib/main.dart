import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'user_app.dart';
import 'admin_app.dart';

void main() {
  runApp(kIsWeb ? const AdminApp() : const UserApp());
}
