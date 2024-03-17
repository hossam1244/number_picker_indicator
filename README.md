# NumberPickerIndicator
NumberPickerIndicator is a custom widget designed for choosing a number using a slider.


## Example:

(See `example` for more)

```dart
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentValue = 3;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,
        title: Text("Number Picker Indicator"),
      ),
      body: Center(
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
```