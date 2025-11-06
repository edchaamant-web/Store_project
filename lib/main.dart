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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(370, 70),
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                  backgroundColor: Color.fromRGBO(28, 97, 230, 1),
                  elevation: 6,
                  shadowColor: Color.fromRGBO(55, 93, 251, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'تسجيل الدخول',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Inter',
                    fontSize: 19,
                    fontWeight: FontWeight.normal,
                    height: 1.5,

                  ),
                ),
              ),
              SizedBox(height: 22),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'إنشاء حساب',
                      style: TextStyle(
                        color: Color.fromRGBO(77, 129, 231, 1),
                        fontFamily: 'Inter',
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        height: 1.5,
                      ),
                    ),
                  ),
                  Text(
                    'ليس لديك حساب؟',
                    style: TextStyle(
                      color: Color.fromRGBO(108, 114, 120, 1),
                      fontFamily: 'Inter',
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
