import 'package:flutter/material.dart';

class BMICalculatorScreen extends StatefulWidget {
  const BMICalculatorScreen({Key? key}) : super(key: key);

  @override
  _BMICalculatorScreenState createState() => _BMICalculatorScreenState();
}

class _BMICalculatorScreenState extends State<BMICalculatorScreen> {
  TextEditingController _weightController = TextEditingController();
  TextEditingController _heightController = TextEditingController();

  double? _result;

  void _bmiClac() {
    double height = double.parse(_heightController.text) / 100;
    double weight = double.parse(_weightController.text);

    double heightSqure = height * height;
    double result = weight / heightSqure;
    _result = result;
    setState(() {});
  }

  String categories() {
    String _categorey;
    if (_result != null) {
      if (_result! >= 25) {
        return _categorey = 'Overweight';
      } else if (_result! >= 18.5) {
        return _categorey = 'Normal';
      } else {
        return _categorey = 'Underweight';
      }
    }
    return _categorey = '';
  }

  @override
  void dispose() {
    _weightController.dispose();
    _heightController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calcluator'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _weightController,
              decoration: InputDecoration(
                labelText: 'Weight in kg',
                icon: Icon(Icons.line_weight),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _heightController,
              decoration: InputDecoration(
                labelText: 'Height in cm',
                icon: Icon(Icons.trending_up),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  categories(),
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 20),
                Text(
                  _result == null ? '' : _result!.toStringAsFixed(2),
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: _bmiClac,
              child: Text('Calculate'),
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                padding: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                textStyle: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
