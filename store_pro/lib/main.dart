import 'package:flutter/material.dart';
import 'database/db_store.dart';

final DBHelper dbHelper =
    DBHelper(); // انشاء نسخة من الكلاس للاستخدام قواعد البيانات

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(appBar: AppBar(), body: Column()),
    );
  }
}
