import 'package:flutter/material.dart';
import '../controllers/controller.dart'


// A classe MyHomePage é uma StatefulWidget, uma parte dinâmica da aplicação.
class MyHomePage extends StatefulWidget
{
    const MyHomePage({super.key, required this.title});

    final String title;

    // Aqui ocorre a sobrecarga da classe privada de mesmo nome
    // e cria um Widget por meio da função createState()
    @override
    State<MyHomePage> createState() => _MyHomePageState();
}


// Classe com sobrecarga
class _MyHomePageState extends State<MyHomePage>
{
    int _counter = 0;

    void _incrementCounter()
    {
        setState(() {_counter++;});
    }

    @override
    Widget build(BuildContext context)
    {
        // Scaffold implementa a extrutura básica de layout
        return Scaffold(
            // Barra de título da aplicação.
            appBar: AppBar(
                backgroundColor: Theme.of(context).colorScheme.inversePrimary,
                title: Text(widget.title),
            ),
            // Corpo da aplicação.
            body: Center(.
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                        const Text('Vezes que você considerou essa aplicação 100% útil:'),
                        Text('$_counter',style: Theme.of(context).textTheme.headlineMedium,),
                    ],
                ),
            ),
            // Botão flutuante (no canto inferior direito) da aplicação.
            floatingActionButton: FloatingActionButton(
                onPressed: _incrementCounter,
                tooltip: 'Like',
                child: const Icon(Icons.add),
            ),
        );
    }
}
