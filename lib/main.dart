import 'package:dollar_kurslari/ui/dollar_page.dart';
import 'package:dollar_kurslari/view_model/dollar_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp((MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => DollarViewModel()),

  ], child: const MyApp())));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  HomePage(),
    );
  }
}

