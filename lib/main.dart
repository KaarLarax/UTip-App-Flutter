import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    print(context.widget.toString());
    return MaterialApp(
      title: 'Utip APP',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple), useMaterial3: true),
      home: const UTip(),
    );
  }
}

class UTip extends StatefulWidget {
  const UTip({super.key});

  @override
  State<UTip> createState() => _UTipState();
}

class _UTipState extends State<UTip> {
  @override
  Widget build(BuildContext context) {
    print(context.widget.toString());
    var theme = Theme.of(context);
    // Style
    final style = theme.textTheme.displayMedium!.copyWith(
      color: theme.colorScheme.onPrimary,
      fontWeight: FontWeight.bold,
    );
    return Scaffold(
      appBar: AppBar(title: const Text('UTip APP')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: theme.colorScheme.inversePrimary,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Text("Total Per Person", style: style),
                Text("\$23.00", style: style.copyWith(
                  color: theme.colorScheme.onPrimary,
                  fontSize: theme.textTheme.displaySmall?.fontSize,
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
