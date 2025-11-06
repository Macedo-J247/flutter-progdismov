import 'package:flutter/material.dart';


// MyApp é uma Stateless Widget, uma parte estática da aplicação.
class MyApp extends StatelessWidget
{
    const MyApp({super.key});

    // É ela quem constrói um Widget MaterialApp.
    @override
    Widget build(BuildContext context)
    {
        return MaterialApp(
            title: 'Título da aplicação',  // Título interno da aplicação.
            theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),  // Tema interno da aplicação.
            ),
            home: const MyHomePage(title: 'Tela de ínicio da Aplicação'),  // "Landing Page"/Tela inicial da aplicação.
        );
    }
}
