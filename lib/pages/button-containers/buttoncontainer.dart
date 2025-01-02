import 'package:flutter/material.dart';

class ButtonContainer extends StatelessWidget {
  const ButtonContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Teang Button Container"),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment:
              CrossAxisAlignment.stretch, // Makes buttons full width
          children: [
            // Full-width Material Button
            MaterialButton(
              onPressed: () {
                // Add your functionality here
              },
              color: Colors.green,
              height: 50,
              child: const Text(
                "Full Width Button",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            const SizedBox(height: 20),

            // Outline Button
            OutlinedButton(
              onPressed: () {
                // Add your functionality here
              },
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.blue, width: 2),
                padding: const EdgeInsets.symmetric(vertical: 15),
              ),
              child: const Text(
                "Outline Button",
                style: TextStyle(color: Colors.blue, fontSize: 20),
              ),
            ),
            const SizedBox(height: 20),

            // Icon Button
            MaterialButton(
              onPressed: () {
                // Add your functionality here
              },
              color: Colors.red,
              height: 50,
              minWidth: 50,
              child: const Icon(Icons.square, color: Colors.white),
            ),
            const SizedBox(height: 20),

            // Elevated Button
            ElevatedButton(
              onPressed: () {
                // Add your functionality here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                padding: const EdgeInsets.symmetric(vertical: 15),
              ),
              child: const Text(
                "Elevated Button",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
