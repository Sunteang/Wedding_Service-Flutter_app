import 'package:flutter/material.dart';

class PhotographyPage extends StatelessWidget {
  final String categoryName;

  const PhotographyPage({Key? key, required this.categoryName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryName),
        backgroundColor: Color(0xFF1565C0),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Choose Your Photography Style",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            _buildOptionCard(
                context, "Classic Photography", "\$500", Icons.camera_alt),
            _buildOptionCard(
                context, "Candid Photography", "\$700", Icons.camera),
            _buildOptionCard(context, "Drone Photography", "\$1500",
                Icons.airplanemode_active),
          ],
        ),
      ),
    );
  }

  Widget _buildOptionCard(
      BuildContext context, String title, String price, IconData icon) {
    return GestureDetector(
      onTap: () {
        // Navigate to the details or booking page for the selected photography style
        print("User selected $title with price $price");
      },
      child: Card(
        elevation: 5,
        margin: const EdgeInsets.symmetric(vertical: 10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Icon(icon, color: Color(0xFF1565C0)),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 5),
                  Text(price,
                      style:
                          const TextStyle(fontSize: 14, color: Colors.green)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}