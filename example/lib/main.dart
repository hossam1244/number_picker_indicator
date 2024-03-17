import 'package:flutter/material.dart';
import 'package:number_picker/number_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentValue = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Number Picker Indicator"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 100,left: 30,right: 30),
        child: NumberPickerIndicator(
          minValue: 0,
          maxValue: 10,
          value: _currentValue,
          onChanged: (int value) {},
          showTitle: true,
          title: "Number Picker",
          showNumber: true,
        ),
      ),
    );
  }
}
