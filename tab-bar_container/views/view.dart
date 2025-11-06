import 'package:flutter/material.dart';
import '../controllers/controller.dart'


class MyHomePage extends StatefulWidget {
    const MyHomePage({
        super.key,
        required this.title
    });

    final String title;

    @override
    State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage>
{ 
    @override
    Widget build(BuildContext context)
    {
        return DefaultTabController(
            initialIndex: 1,
            length: 3,
            child: Scaffold(
                appBar: AppBar(
                    title: const Text('TabBar Widget'),
                    bottom: const TabBar(
                        tabs: <Widget>[
                            Tab(
                                icon: Icon(Icons.cloud_outlined),
                            ),  // Tab #1
                            Tab(
                                icon: Icon(Icons.beach_access_sharp),
                            ),  // Tab #2
                            Tab(
                                icon: Icon(Icons.brightness_5_sharp),
                            ),  // Tab #3
                        ],  // <Widget>
                    ),  // TabBar
                ),  // AppBar
                body: TabBarView(
                    children: <Widget>[
                        Center(
                            child: Image.network(
                                'https://media4.giphy.com/media/v1.Y2lkPTc5MGI3NjExOTJqZDMxOHl0eGxiMWIwbms2dWs4Yjk4M25hY2V4b2Z0b2RpYjA1bCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/l1J9JrxgSYFB1mqYg/giphy.gif',
                            ),  // Image.network #1
                        ),  // Center #1
                        Center(
                            child: Image.network(
                                'https://media1.giphy.com/media/v1.Y2lkPTc5MGI3NjExdjFhZ3doc2Y0OHp6YTA5eWx4OG4xb3BmaWJocTN2aG5hZ3Y5cXMxdCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/LGY967AFmrueY/giphy.gif',
                            ),  // Image.network #2
                        ),  // Center #2
                        Center(
                            child: Image.network(
                                'https://media0.giphy.com/media/v1.Y2lkPTc5MGI3NjExMWZmMDJyMzR4cXpheGQ5YWdnbjZ2bnh5Z3JjdjJsdHR6eXpleXIzOSZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/AQRapWCgC7dThyVEYb/giphy.gif',
                            ),  // Image.network #3
                        ),  // Center #3
                    ],  // <Widget>
                ),  // TabBarView
            ),  // Scaffold
        );  // DefaultTabController
    }
}
