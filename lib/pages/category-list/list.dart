import 'package:flutter/material.dart';
import 'package:wedding_service_app/pages/category-list/components/card.dart';
import 'package:wedding_service_app/pages/nav-bar/NavBar.dart';
import 'package:wedding_service_app/pages/details/venues-detail/VenuesDetails.dart';
import 'package:wedding_service_app/data/api/event_api.dart';

class CategoryList extends StatefulWidget {
  final int id;
  final String categoryName;

  const CategoryList({super.key, required this.id, required this.categoryName});

  @override
  CategoryListState createState() => CategoryListState();
}

class CategoryListState extends State<CategoryList> {
  final EventApi _eventAPI = EventApi();
  late String categoryName = widget.categoryName.toString();

  // Loading state
  bool isLoading = true;
  List<Map<String, dynamic>> events = [];

  @override
  void initState() {
    super.initState();
    fetchEvents();
  }

  Future<void> fetchEvents() async {
    try {
      final fetchedEvents = await _eventAPI.fetchEvents(queryParams: {'pagination': 'false', 'categoryId': widget.id.toString()});

      setState(() {
        events = List<Map<String, dynamic>>.from(fetchedEvents['data']);
        isLoading = false;
      });

      print("Events ~: $events");
    } catch (e) {
      print('Error fetching Events: $e');
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryName),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context, MaterialPageRoute(builder: (context) => NavBar()));
          },
        ),
      ),
      body: Column(
        children: [
          // List of venues
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => VenueDetailsPage()),
                    );
                  },
                  child: const ListCard(
                    imageUrl: 'https://t3.ftcdn.net/jpg/01/03/32/70/360_F_103327027_Q1xyMUkuBa70u40rViraUHTkDLQS2irJ.jpg',
                    title: 'PKS Wedding Hall In Phnom Penh',
                    subtitle: 'Wedding Hall • 1.3km (14 min)',
                    price: '\$1450/day',
                    rating: 4.8,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => VenueDetailsPage()),
                    );
                  },
                  child: const ListCard(
                    imageUrl: 'https://t3.ftcdn.net/jpg/01/03/32/70/360_F_103327027_Q1xyMUkuBa70u40rViraUHTkDLQS2irJ.jpg',
                    title: 'YWS Wedding Hall In Siem Reap',
                    subtitle: 'Wedding Hall • 1km (12 min)',
                    price: '\$800/day',
                    rating: 4.4,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => VenueDetailsPage()),
                    );
                  },
                  child: const ListCard(
                    imageUrl: 'https://t3.ftcdn.net/jpg/01/03/32/70/360_F_103327027_Q1xyMUkuBa70u40rViraUHTkDLQS2irJ.jpg',
                    title: 'AC Royal In Phnom Penh',
                    subtitle: 'Wedding Hall • 750m (10 min)',
                    price: '\$1000/day',
                    rating: 4.2,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => VenueDetailsPage()),
                    );
                  },
                  child: const ListCard(
                    imageUrl: 'https://t3.ftcdn.net/jpg/01/03/32/70/360_F_103327027_Q1xyMUkuBa70u40rViraUHTkDLQS2irJ.jpg',
                    title: 'YWS Wedding Hall In Siem Reap',
                    subtitle: 'Wedding Hall • 1km (12 min)',
                    price: '\$950/day',
                    rating: 4.4,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => VenueDetailsPage()),
                    );
                  },
                  child: const ListCard(
                    imageUrl: 'https://t3.ftcdn.net/jpg/01/03/32/70/360_F_103327027_Q1xyMUkuBa70u40rViraUHTkDLQS2irJ.jpg',
                    title: 'PKS Wedding Hall In Phnom Penh',
                    subtitle: 'Wedding Hall • 1.3km (14 min)',
                    price: '\$1250/day',
                    rating: 4.8,
                  ),
                ),
              ],
            ),
          ),

          // Bottom Sort and Filter Buttons
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: const Offset(0, -2),
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
                  icon: const Icon(Icons.sort, color: Colors.pink),
                  label: const Text(
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
                  icon: const Icon(Icons.filter_alt, color: Colors.pink),
                  label: const Text(
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
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
