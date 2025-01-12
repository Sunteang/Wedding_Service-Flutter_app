import 'package:flutter/material.dart';
import 'package:wedding_service_app/pages/details/catering-detail/CateringDetail.dart';
import 'package:wedding_service_app/pages/nav-bar/NavBar.dart';

class CateringPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catering'),
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
          // List of catering services
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CateringDetailPage()),
                    );
                  },
                  child: CateringCard(
                    imageUrl:
                        'https://i.pinimg.com/736x/6d/db/79/6ddb79549d5f292142988b61725f8ef0.jpg',
                    title: 'Phenomenal Catering Services',
                    subtitle: 'Top-notch catering for weddings',
                    price: '\$2,000/day',
                    rating: 4.9,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CateringDetailPage()),
                    );
                  },
                  child: CateringCard(
                    imageUrl:
                        'https://i.pinimg.com/736x/de/ad/92/dead92bde1073ee098b34da509298389.jpg',
                    title: 'Golden Spoon Catering',
                    subtitle: '150+ Menu Options',
                    price: '\$1,800/day',
                    rating: 4.8,
                  ),
                ),
                CateringCard(
                  imageUrl:
                      'https://i.pinimg.com/736x/6d/db/79/6ddb79549d5f292142988b61725f8ef0.jpg',
                  title: 'Elegant Events Catering',
                  subtitle: 'Exceptional food for all events',
                  price: '\$2,500/day',
                  rating: 4.7,
                ),
                CateringCard(
                  imageUrl:
                      'https://i.pinimg.com/736x/de/ad/92/dead92bde1073ee098b34da509298389.jpg',
                  title: 'Elite Wedding Catering',
                  subtitle: 'Custom menus tailored for your wedding',
                  price: '\$2,200/day',
                  rating: 4.8,
                ),
                CateringCard(
                  imageUrl:
                      'https://i.pinimg.com/736x/6d/db/79/6ddb79549d5f292142988b61725f8ef0.jpg',
                  title: 'Grand Feast Catering',
                  subtitle: 'A feast your guests will never forget',
                  price: '\$2,300/day',
                  rating: 4.6,
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

class CateringCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String price;
  final double rating;

  CateringCard({
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
          // Catering Image
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
