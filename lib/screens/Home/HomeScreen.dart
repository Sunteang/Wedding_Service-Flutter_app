import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Hero Section
          Container(
            padding: const EdgeInsets.all(20.0),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF42A5F5), Color(0xFF1565C0)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Search Box Section with Border
                Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: Row(
                    children: [
                      Icon(Icons.search, color: Colors.white),
                      const SizedBox(width: 8.0),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(
                                0.7), // Background color with opacity
                            borderRadius:
                                BorderRadius.circular(8.0), // Rounded corners
                            border:
                                Border.all(color: Colors.white), // White border
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search for services...',
                              hintStyle: TextStyle(
                                  color: Colors.white.withOpacity(0.7)),
                              border: InputBorder.none, // Remove default border
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 12.0,
                                  horizontal: 16.0), // Adjust padding inside
                            ),
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Welcome Text
                const Text(
                  "Welcome to Wedding Service App!",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 12),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to browse all categories
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Color(0xFF1565C0),
                    padding: const EdgeInsets.symmetric(
                        vertical: 14.0, horizontal: 20.0),
                  ),
                  child: const Text("Browse All Categories"),
                ),
              ],
            ),
          ),

          // Category Section
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
            child: const Text(
              "Wedding most offered ",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            padding: const EdgeInsets.all(16.0),
            children: [
              _buildCategoryCard(
                  context, "Wedding Band", Icons.music_note, Colors.pink),
              _buildCategoryCard(
                  context, "Photography", Icons.camera_alt, Colors.orange),
              _buildCategoryCard(
                  context, "Bridal Makeup", Icons.brush, Colors.purple),
              _buildCategoryCard(
                  context, "Others", Icons.category, Colors.blue),
            ],
          ),

          // Popular Services Section
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: const Text(
              "Popular Services",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              _buildServiceTile(Icons.music_note, "Band and Sound"),
              _buildServiceTile(Icons.camera_alt, "Photography Services"),
              _buildServiceTile(Icons.brush, "Beauty Parlour"),
              _buildServiceTile(Icons.king_bed, "Bridal Accessories"),
            ],
          ),

          // Testimonials Section
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: const Text(
              "What Our Users Say",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildTestimonialCard(
                    "Teangg", "This app made planning so easy!"),
                _buildTestimonialCard(
                    "Jan", "Great services and user-friendly."),
                _buildTestimonialCard("Leeee", "Highly recommend this app."),
              ],
            ),
          ),

          // Wedding Planning Tools Section
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: const Text(
              "Wedding Planning Tools",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ElevatedButton(
              onPressed: () {
                // Navigate to the wedding planning tool page
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF1565C0),
                padding: const EdgeInsets.symmetric(vertical: 14.0),
              ),
              child: const Text("Access Your Wedding Planner",
                  style: TextStyle(fontSize: 16, color: Colors.white)),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildCategoryCard(
      BuildContext context, String title, IconData icon, Color color) {
    return GestureDetector(
      onTap: () {
        // Navigate to the specific service page
      },
      child: Card(
        color: color.withOpacity(0.2),
        elevation: 8,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 48, color: color),
            const SizedBox(height: 12),
            Text(
              title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildServiceTile(IconData icon, String title) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: ListTile(
        leading: Icon(icon, color: Color(0xFF1565C0)),
        title: Text(title),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () {
          // Add action if needed
        },
      ),
    );
  }

  Widget _buildTestimonialCard(String name, String feedback) {
    return Container(
      width: 250,
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              blurRadius: 6,
              spreadRadius: 2),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(name,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.black)),
          const SizedBox(height: 6),
          Text(feedback,
              style: const TextStyle(fontSize: 14, color: Colors.black)),
        ],
      ),
    );
  }
}
