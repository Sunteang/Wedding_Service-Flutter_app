import 'package:flutter/material.dart';
import 'package:wedding_service_app/pages/details/band-detail/BandDetail.dart';
import 'package:wedding_service_app/pages/nav-bar/NavBar.dart';

class BandPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bands'),
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
          // List of bands
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BandDetailPage()),
                    );
                  },
                  child: BandCard(
                    imageUrl:
                        'https://i.pinimg.com/736x/7a/85/2d/7a852d1743781a343b07f8e583c5dbed.jpg',
                    title: 'Symphony Wedding Band',
                    subtitle: 'Live Band • 1.3km (14 min)',
                    price: '\$700/event',
                    rating: 4.8,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BandDetailPage()),
                    );
                  },
                  child: BandCard(
                    imageUrl:
                        'https://i.pinimg.com/736x/5b/e7/35/5be735a3514c4e5524debab9dc9da2d9.jpg',
                    title: 'Melody Makers',
                    subtitle: 'Live Band • 1km (12 min)',
                    price: '\$600/event',
                    rating: 4.6,
                  ),
                ),
                BandCard(
                  imageUrl:
                      'https://i.pinimg.com/736x/7a/85/2d/7a852d1743781a343b07f8e583c5dbed.jpg',
                  title: 'Fusion Beats',
                  subtitle: 'Live Band • 750m (10 min)',
                  price: '\$500/event',
                  rating: 4.7,
                ),
                BandCard(
                  imageUrl:
                      'https://i.pinimg.com/736x/5b/e7/35/5be735a3514c4e5524debab9dc9da2d9.jpg',
                  title: 'The Harmonizers',
                  subtitle: 'Live Band • 2km (20 min)',
                  price: '\$650/event',
                  rating: 4.9,
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

class BandCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String price;
  final double rating;

  BandCard({
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
          // Band Image
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
