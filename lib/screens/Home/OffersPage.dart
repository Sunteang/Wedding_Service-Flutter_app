import 'package:flutter/material.dart';
import 'package:wedding_service_app/pages/service/catering/Catering.dart';
import 'package:wedding_service_app/pages/service/decoration/Decoration.dart';
import 'package:wedding_service_app/pages/service/florist/Florist.dart';
import 'package:wedding_service_app/pages/service/make-up/MakeUp.dart';
import 'package:wedding_service_app/pages/service/photograph/Photography.dart';
import 'package:wedding_service_app/pages/service/wedding-band/WeddingBand.dart';
import 'package:wedding_service_app/pages/service/wedding-dresses/WeddingDresses.dart';
import 'package:wedding_service_app/pages/service/wedding-venues/WeddingVenues.dart';

class WeddingOffersPage extends StatelessWidget {
  final List<Map<String, dynamic>> categories = [
    {'name': 'Wedding Band', 'icon': Icons.music_note},
    {'name': 'Photography', 'icon': Icons.camera_alt},
    {'name': 'Bridal Makeup', 'icon': Icons.brush},
    {'name': 'Wedding Venues', 'icon': Icons.location_city},
    {'name': 'Catering', 'icon': Icons.restaurant},
    {'name': 'Wedding Dresses', 'icon': Icons.checkroom},
    {'name': 'Florists', 'icon': Icons.local_florist},
    {'name': 'Decorations', 'icon': Icons.format_paint},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Header with Search Box
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(20.0),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF42A5F5), Color(0xFF1565C0)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                "Browse All Ceremony Categories",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12.0),
              // Search Box Section inside the header
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
                            hintStyle:
                                TextStyle(color: Colors.white.withOpacity(0.7)),
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
            ],
          ),
        ),
        // Categories Grid
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
              ),
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    // Navigate to the selected service's page using explicit routing
                    switch (categories[index]['name']) {
                      case 'Wedding Band':
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => WeddingBandPage(
                              categoryName: categories[index]['name'],
                            ),
                          ),
                        );
                        break;
                      case 'Photography':
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PhotographyPage(
                              categoryName: categories[index]['name'],
                            ),
                          ),
                        );
                        break;
                      case 'Bridal Makeup':
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BridalMakeupPage(
                              categoryName: categories[index]['name'],
                            ),
                          ),
                        );
                        break;
                      case 'Wedding Venues':
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => WeddingVenuesPage(
                              categoryName: categories[index]['name'],
                            ),
                          ),
                        );
                        break;
                      case 'Catering':
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CateringPage(
                              categoryName: categories[index]['name'],
                            ),
                          ),
                        );
                        break;
                      case 'Wedding Dresses':
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => WeddingDressesPage(
                              categoryName: categories[index]['name'],
                            ),
                          ),
                        );
                        break;
                      case 'Florists':
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FloristsPage(
                              categoryName: categories[index]['name'],
                            ),
                          ),
                        );
                        break;
                      case 'Decorations':
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DecorationsPage(
                              categoryName: categories[index]['name'],
                            ),
                          ),
                        );
                        break;
                      default:
                        // Handle default case if needed
                        break;
                    }
                  },
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.grey[200],
                          child: Icon(
                            categories[index]['icon'],
                            size: 40,
                            color: Color(0xFF1565C0),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          categories[index]['name'],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
