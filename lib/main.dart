import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resumepad/screen/on_boarding/on_boarding_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  run();
}

Future run() async {

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ResumePad',
      theme: ThemeData.light(),
      home: OnBoardingPage(),
      initialRoute: '/',
    );
  }
}