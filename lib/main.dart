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
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(50),
              ),
              Text(
                "Welcome",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  style: TextStyle(color: Colors.blue),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Email",
                      icon: Icon(
                        Icons.email,
                        color: Colors.blue,
                        size: 25,
                      ),
                      hintStyle: TextStyle(color: Colors.blue),
                      enabledBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                              color: const Color.fromARGB(31, 9, 87, 255),
                              width: 3)),
                      focusedBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                              color: const Color.fromARGB(31, 252, 77, 8),
                              width: 3)),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 227, 239, 248)),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  style: TextStyle(color: Colors.blue),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Password",
                      icon: Icon(
                        Icons.lock,
                        color: Colors.blue,
                        size: 25,
                      ),
                      hintStyle: TextStyle(color: Colors.blue),
                      enabledBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                              color: const Color.fromARGB(31, 9, 87, 255),
                              width: 3)),
                      focusedBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                              color: const Color.fromARGB(31, 252, 77, 8),
                              width: 3)),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 227, 239, 248)),
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                width: double.infinity,
              ),
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
