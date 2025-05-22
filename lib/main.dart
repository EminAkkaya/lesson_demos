import 'package:flutter/material.dart';
import 'package:lesson_demos/101/first_provider_learn.dart';
import 'package:lesson_demos/providers/first_provider.dart';
import 'package:lesson_demos/providers/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
        ChangeNotifierProvider(create: (context) => FirstProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: context.watch<ThemeProvider>().theme,
      debugShowCheckedModeBanner: false,
      home: FirstProviderLearn(),
    );
  }
}
