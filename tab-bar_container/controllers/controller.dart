import 'package:flutter/material.dart';


class MyApp extends StatelessWidget
{
    const MyApp({super.key});

    @override
    Widget build(BuildContext context)
    {
        return MaterialApp(
            title: 'TabBar Container',
            theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.pinkAccent),
            ),  // ThemeData
            home: const MyHomePage(title: 'Uso demonstrativo de TabBar'),
        );  // MaterialApp
    }
}
