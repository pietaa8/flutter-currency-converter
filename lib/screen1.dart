import 'package:flutter/material.dart';
import 'screen2.dart';

class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  TextEditingController amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Currency Converter"),
        backgroundColor: Colors.green, // Beautiful AppBar color
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Enter Amount in USD",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            TextField(
              controller: amountController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                hintText: 'Enter amount',
                prefixIcon:
                    const Icon(Icons.attach_money, color: Colors.purple),
              ),
            ),
            const SizedBox(height: 25),
            ElevatedButton(
              onPressed: () {
                double amount = double.tryParse(amountController.text) ?? 0;
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Screen2(amount: amount),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    const Color.fromARGB(255, 105, 222, 109), // Button color
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
              ),
              child: const Text('Convert', style: TextStyle(fontSize: 21)),
            ),
          ],
        ),
      ),
    );
  }
}
