import 'package:flutter/material.dart';
import 'package:wedding_service_app/pages/service/band/Band.dart';
import 'package:wedding_service_app/pages/service/catering/Catering.dart';
import 'package:wedding_service_app/pages/service/decoration/Decoration.dart';
import 'package:wedding_service_app/pages/service/dresses/Dresses.dart';
import 'package:wedding_service_app/pages/service/florist/Florist.dart';
import 'package:wedding_service_app/pages/service/make-up/MakeUp.dart';
import 'package:wedding_service_app/pages/service/photography/Photography.dart';
import 'package:wedding_service_app/pages/service/venues/Venues.dart';

class WeddingOffersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Header
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: AppBar(
                  elevation: 0,
                  backgroundColor: Colors.white,
                  title: Text(
                    'Category',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  centerTitle: true,
                  leading: Icon(
                    Icons.bookmark_add,
                    color: Colors.black,
                  ),
                  actions: [
                    Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Dropdown
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
              child: DropdownButton<String>(
                isExpanded: true,
                underline: SizedBox(),
                value: 'Phnom Penh',
                items: [
                  'Phnom Penh',
                  'Siem Reap',
                  'Banteay Meanchey',
                  'Kampot',
                  'Battambang',
                  'Kep',
                  'Kampong Speu',
                  'Koh Kong',
                ]
                    .map((city) => DropdownMenuItem(
                          value: city,
                          child: Text(city),
                        ))
                    .toList(),
                onChanged: (value) {},
              ),
            ),
          ),

          // List of Categories
          Expanded(
            child: ListView(
              children: [
                CategoryCard(
                  title: 'Wedding Venues',
                  imageUrl:
                      'https://i.pinimg.com/736x/ff/84/33/ff843394cb5bebe70910951349c337f5.jpg',
                  results: '203 Results - in Phnom Penh',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => VenuesPage()),
                    );
                  },
                ),
                CategoryCard(
                  title: 'Wedding Photographer',
                  imageUrl:
                      'https://i.pinimg.com/736x/09/83/5d/09835d1281ffbc3d66601fcec8097b7c.jpg',
                  results: '150 Results - in Siem Reap',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PhotographyPage()),
                    );
                  },
                ),
                CategoryCard(
                  title: 'Wedding Band',
                  imageUrl:
                      'https://i.pinimg.com/736x/65/54/9a/65549a93b8c0514db60a04937c8c3ed9.jpg',
                  results: '120 Results - in Phnom Penh',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BandPage()),
                    );
                  },
                ),
                CategoryCard(
                  title: 'Bridal Makeup',
                  imageUrl:
                      'https://i.pinimg.com/736x/36/92/22/369222e436dbcaf0793fb94cd23251dd.jpg',
                  results: '180 Results - in Battambong',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MakeupPage()),
                    );
                  },
                ),
                CategoryCard(
                  title: 'Catering',
                  imageUrl:
                      'https://i.pinimg.com/736x/44/d8/3d/44d83dbdbd2fb1e8de4e816755295508.jpg',
                  results: '145 Results - in Phnom Penh',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CateringPage()),
                    );
                  },
                ),
                CategoryCard(
                  title: 'Wedding Dresses',
                  imageUrl:
                      'https://i.pinimg.com/736x/42/02/d9/4202d9a69c2b83b2b99e25ca1d5b97c7.jpg',
                  results: '110 Results - in Phnom Penh',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DressesPage()),
                    );
                  },
                ),
                CategoryCard(
                  title: 'Florists',
                  imageUrl:
                      'https://i.pinimg.com/736x/e6/f6/0d/e6f60d0ff7feaec73ff72bc5674343a0.jpg',
                  results: '90 Results - in Phnom Penh',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FloristsPage()),
                    );
                  },
                ),
                CategoryCard(
                  title: 'Decorations',
                  imageUrl:
                      'https://i.pinimg.com/736x/ac/2e/fb/ac2efbb6bfa9b64c227d76e81d9ca0a7.jpg',
                  results: '85 Results - in Phnom Penh',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DecorationsPage()),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String results;
  final VoidCallback onTap;

  const CategoryCard({
    required this.title,
    required this.imageUrl,
    required this.results,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
              child: Image.network(
                imageUrl,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Text(
                    results,
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
