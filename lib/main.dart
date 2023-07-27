import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test/api/date.dart';
import 'package:riverpod_test/view/home.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Home(),
      home: Date(),
    );
  }
}

class Date extends StatefulWidget {
  const Date({super.key});

  @override
  State<Date> createState() => _DateState();
}

class _DateState extends State<Date> {
  DateTime dateTime = DateTime(2000);
  @override
  void initState() {
    getDate();
    super.initState();
  }

  void getDate() async {
    setState(() async {
      dateTime = await APICall().getDateTime();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child:
              Text('${dateTime.year} - ${dateTime.month} - ${dateTime.day}')),
    );
  }
}
