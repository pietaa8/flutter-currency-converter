import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  final double amount;
  static const double fixedExchangeRate = 120.0; // Fixed Rate: 1 USD = 120 BDT

  const Screen2({required this.amount, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double convertedAmount = amount * fixedExchangeRate;
    String result = "$amount USD = ${convertedAmount.toStringAsFixed(2)} BDT";

    return Scaffold(
      appBar: AppBar(
        title: const Text("Converted Amount"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Card(
          elevation: 8,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          color: const Color.fromARGB(255, 100, 221, 105),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              result,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
