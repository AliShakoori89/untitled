import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:untitled/views/login_page.dart';
import 'boxes.dart';
import 'models/book_lib.dart';

void main() async {
  // Hive.initFlutter();
  await Hive.initFlutter();
  Hive.registerAdapter(ShopAdapter());
  await Hive.openBox<Shop>(HiveBoxes.shop);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      // home: BookSearch(),
      home: const LoginPage(),
    );
  }
}
