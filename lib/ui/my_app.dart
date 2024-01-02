import 'package:flutter/material.dart';
import 'pages/converter_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Currency converter',
        theme: ThemeData(
          primarySwatch: Colors.grey,
          useMaterial3: true,
        ),
        home: const ConverterPage());
  }
}
