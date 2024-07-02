import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app_provider/home.dart';
import 'package:weather_app_provider/theme.dart';
import 'package:weather_app_provider/theme_provider.dart';

void main() {
  runApp( ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather App',
      home: HomeScreen(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}

