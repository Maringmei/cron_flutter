import 'package:cron/cron.dart';
import 'package:cron_flutter/HomeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  final cron = Cron();

  cron.schedule(Schedule.parse('*/1 * * * *'), () async {
    print('every one minutes');
  });

  cron.schedule(Schedule.parse('8-11 * * * *'), () async {
    print('between every 8 and 11 minutes');
  });

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
