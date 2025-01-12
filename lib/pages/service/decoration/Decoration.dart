import 'package:flutter/material.dart';
import 'package:wedding_service_app/pages/details/decoration-detail/DecorationDetail.dart';
import 'package:wedding_service_app/pages/nav-bar/NavBar.dart';

class DecorationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Decorations'),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(
                context, MaterialPageRoute(builder: (context) => NavBar()));
          },
        ),
      ),
      body: Column(
        children: [
          // List of decoration services
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DecorationDetailPage()),
                    );
                  },
                  child: DecorationCard(
                    imageUrl:
                        'https://i.pinimg.com/736x/fe/a6/ce/fea6ce47d478acb6946b331e500a41a4.jpg',
                    title: 'Elegant Wedding Decorations',
                    subtitle: 'Sophisticated and luxurious designs',
                    price: '\$950/event',
                    rating: 4.8,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DecorationDetailPage()),
                    );
                  },
                  child: DecorationCard(
                    imageUrl:
                        'https://i.pinimg.com/736x/9d/fe/93/9dfe939f19ec50c0c34ae973da06b997.jpg',
                    title: 'Traditional Wedding Setup',
                    subtitle: 'Classic Indian wedding themes',
                    price: '\$750/event',
                    rating: 4.6,
                  ),
                ),
                DecorationCard(
                  imageUrl:
                      'https://i.pinimg.com/736x/fe/a6/ce/fea6ce47d478acb6946b331e500a41a4.jpg',
                  title: 'Floral Bliss Decorations',
                  subtitle: 'Floral arrangements and décor',
                  price: '\$600/event',
                  rating: 4.7,
                ),
                DecorationCard(
                  imageUrl:
                      'https://i.pinimg.com/736x/9d/fe/93/9dfe939f19ec50c0c34ae973da06b997.jpg',
                  title: 'Royal Themed Decorations',
                  subtitle: 'Majestic designs for a royal wedding',
                  price: '\$650/event',
                  rating: 4.9,
                ),
                DecorationCard(
                  imageUrl:
                      'https://i.pinimg.com/736x/fe/a6/ce/fea6ce47d478acb6946b331e500a41a4.jpg',
                  title: 'Minimalist Wedding Décor',
                  subtitle: 'Simple and elegant arrangements',
                  price: '\$1000/event',
                  rating: 4.5,
                ),
              ],
            ),
          ),

          // Bottom Sort and Filter Buttons
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: Offset(0, -2),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    // Sort action
                  },
                  icon: Icon(Icons.sort, color: Colors.pink),
                  label: Text(
                    'Sort',
                    style: TextStyle(color: Colors.pink),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink[50],
                    elevation: 0,
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    // Filter action
                  },
                  icon: Icon(Icons.filter_alt, color: Colors.pink),
                  label: Text(
                    'Filter',
                    style: TextStyle(color: Colors.pink),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink[50],
                    elevation: 0,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

class DecorationCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String price;
  final double rating;

  DecorationCard({
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Decoration Image
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
            child: Image.network(
              imageUrl,
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title and Rating
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.orange, size: 16),
                        SizedBox(width: 4),
                        Text(
                          rating.toString(),
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 4),
                // Subtitle
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 8),
                // Price
                Text(
                  price,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
