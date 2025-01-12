import 'package:flutter/material.dart';
import 'package:wedding_service_app/pages/details/photography-detail/PhotographyDetail.dart';
import 'package:wedding_service_app/pages/nav-bar/NavBar.dart';

class PhotographyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Photography'),
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
          // List of photography services
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PhotographyDetailPage()),
                    );
                  },
                  child: PhotographyCard(
                    imageUrl:
                        'https://i.pinimg.com/736x/f6/2f/06/f62f06611e8968eb705135ad49e63ddf.jpg',
                    title: 'Stellar Shots Photography',
                    subtitle: 'Capture moments with perfection',
                    price: '\$500/day',
                    rating: 4.9,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PhotographyDetailPage()),
                    );
                  },
                  child: PhotographyCard(
                    imageUrl:
                        'https://i.pinimg.com/736x/d0/e0/47/d0e0471f36e341554ebb2aa1e3a14a43.jpg',
                    title: 'Candid Memories Photography',
                    subtitle: 'Expert in candid wedding shots',
                    price: '\$400/day',
                    rating: 4.8,
                  ),
                ),
                PhotographyCard(
                  imageUrl:
                      'https://i.pinimg.com/736x/68/ab/ff/68abffe20f9d59367e56e32360899e75.jpg',
                  title: 'Golden Hour Studios',
                  subtitle: 'Perfect shots during golden hour',
                  price: '\$600/day',
                  rating: 4.7,
                ),
                PhotographyCard(
                  imageUrl:
                      'https://i.pinimg.com/736x/c6/26/62/c6266252f8ae151f8de8cab18027fae0.jpg',
                  title: 'Dream Wedding Photographers',
                  subtitle: 'Your wedding memories preserved forever',
                  price: '\$700/day',
                  rating: 4.9,
                ),
                PhotographyCard(
                  imageUrl:
                      'https://i.pinimg.com/736x/68/ab/ff/68abffe20f9d59367e56e32360899e75.jpg',
                  title: 'Elegance Photography',
                  subtitle: 'Timeless wedding portraits',
                  price: '\$550/day',
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

class PhotographyCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String price;
  final double rating;

  PhotographyCard({
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
          // Photography Image
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
