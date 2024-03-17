# NumberPickerIndicator
NumberPickerIndicator is a custom widget designed for choosing a number using a slider.

![example](https://github.com/hossam1244/number_picker_indicator/assets/20118074/0b9ff3b4-f067-4a92-b5dd-ce9bc8eb5a64)


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
