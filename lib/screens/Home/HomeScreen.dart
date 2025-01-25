import 'package:flutter/material.dart';
import 'package:wedding_service_app/data/api/category_api.dart';
import 'package:wedding_service_app/pages/service/catering/Catering.dart';
import 'package:wedding_service_app/pages/service/decoration/Decoration.dart';
import 'package:wedding_service_app/pages/service/florist/Florist.dart';
import 'package:wedding_service_app/pages/service/make-up/MakeUp.dart';
import 'package:wedding_service_app/pages/service/photography/Photography.dart';
import 'package:wedding_service_app/pages/service/band/Band.dart';
import 'package:wedding_service_app/pages/service/dresses/Dresses.dart';
import 'package:wedding_service_app/pages/service/venues/Venues.dart';
import 'package:wedding_service_app/data/api/auth_api.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final AuthAPI _authAPI = AuthAPI();
  final CategoryAPI _categoryAPI = CategoryAPI();

  // Placeholder for user data
  Map<String, dynamic>? user;
  List<Map<String, dynamic>> categories = [];

  // Loading state
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchUserData();
    fetchCategories();
  }

  // Fetch user data from secure storage
  Future<void> fetchUserData() async {
    try {
      final storedUser = await _authAPI.getStoredUser();
      setState(() {
        user = storedUser;
        isLoading = false;
      });
    } catch (e) {
      // Handle error (e.g., show a snackbar or log the error)
      print('Error fetching user data: $e');
      setState(() {
        isLoading = false;
      });
    }
  }

  Future<void> fetchCategories() async {
    try {
      final fetchedCategories = await _categoryAPI.fetchCategories();
      setState(() {
        categories = fetchedCategories;
        isLoading = false;
      });
    } catch (e) {
      print('Error fetching categories: $e');
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator()) // Show loading indicator
          : Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(
                      top: 40, left: 16, right: 16, bottom: 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const CircleAvatar(
                            radius: 24,
                            backgroundImage: NetworkImage(
                                'https://i.pinimg.com/736x/65/78/64/657864774184d29c4c3606640b3ec3fa.jpg'),
                          ),
                          const SizedBox(width: 12),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                user?['name'] ?? 'Guest User',
                                style: const TextStyle(
                                  color: Colors.red,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Text(
                                'Dangkor, Phnom Penh',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.notifications,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Container(
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            hintText: 'Search',
                            prefixIcon: Icon(Icons.search, color: Colors.grey),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(vertical: 12),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.all(16),
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              image: NetworkImage(
                                  'https://i.pinimg.com/736x/09/83/5d/09835d1281ffbc3d66601fcec8097b7c.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: const Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                'Wedding Planner\nWhen dream comes true',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),

                        //Category section
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text(
                            'Category',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4,
                              childAspectRatio: 0.8,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                            ),
                            itemCount: 8,
                            itemBuilder: (context, index) {
                              // Categories and their images
                              List<String> categories = [
                                'Venue',
                                'Photography',
                                'Bands',
                                'Dresses',
                                'Catering',
                                'Makeup',
                                'Decorations',
                                'More'
                              ];

                              List<String> categoryImages = [
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqnJev5MkN71WTUMqdAB_iCK_x9haQdjiitg&s',
                                'https://i.pinimg.com/736x/09/83/5d/09835d1281ffbc3d66601fcec8097b7c.jpg',
                                'https://i.pinimg.com/736x/65/54/9a/65549a93b8c0514db60a04937c8c3ed9.jpg',
                                'https://i.pinimg.com/736x/36/92/22/369222e436dbcaf0793fb94cd23251dd.jpg',
                                'https://i.pinimg.com/736x/44/d8/3d/44d83dbdbd2fb1e8de4e816755295508.jpg',
                                'https://i.pinimg.com/736x/42/02/d9/4202d9a69c2b83b2b99e25ca1d5b97c7.jpg',
                                'https://i.pinimg.com/736x/ac/2e/fb/ac2efbb6bfa9b64c227d76e81d9ca0a7.jpg',
                                'https://i.pinimg.com/736x/e6/f6/0d/e6f60d0ff7feaec73ff72bc5674343a0.jpg',
                              ];

                              // Pages for each category
                              List<Widget> pages = [
                                VenuesPage(),
                                PhotographyPage(),
                                BandPage(),
                                DressesPage(),
                                CateringPage(),
                                MakeupPage(),
                                DecorationsPage(),
                                FloristsPage(),
                              ];

                              return GestureDetector(
                                onTap: () {
                                  // Navigate to the corresponding page when tapped
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          pages[index], // Navigate to the page
                                    ),
                                  );
                                },
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      backgroundImage:
                                          NetworkImage(categoryImages[index]),
                                      radius: 30,
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      categories[index],
                                      style: const TextStyle(fontSize: 12),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),

                        const SizedBox(height: 20),
                        const Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text(
                            'Popular Offers',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Column(
                            children: [
                              PopularOfferCard(
                                title: 'PKS Wedding Hall',
                                subtitle: 'Event Hall',
                                rating: '4.1 (146)',
                                price: '\$1450/event',
                                location: 'K Mall, Phnom Penh',
                                imageUrl:
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqnJev5MkN71WTUMqdAB_iCK_x9haQdjiitg&s',
                              ),
                              PopularOfferCard(
                                title: 'PK Catering',
                                subtitle: 'Catering',
                                rating: '4.3 (536)',
                                price: '\$100/event',
                                location: '150+ Menu Lists',
                                imageUrl:
                                    'https://i.pinimg.com/736x/36/92/22/369222e436dbcaf0793fb94cd23251dd.jpg',
                              ),
                              PopularOfferCard(
                                title: 'SB Photography',
                                subtitle: 'Photography',
                                rating: '4.7 (136)',
                                price: '\$400/event',
                                location: '150+ Menu Lists',
                                imageUrl:
                                    'https://i.pinimg.com/736x/09/83/5d/09835d1281ffbc3d66601fcec8097b7c.jpg',
                              ),
                              PopularOfferCard(
                                title: 'MakeUp Beauty',
                                subtitle: 'Makeup',
                                rating: '4.2 (206)',
                                price: '\$300/event',
                                location: '150+ Menu Lists',
                                imageUrl:
                                    'https://i.pinimg.com/736x/42/02/d9/4202d9a69c2b83b2b99e25ca1d5b97c7.jpg',
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        // promotion
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(bottom: 16),
                                padding: const EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                  color: Colors.pink[50],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment
                                      .start, // Align items at the top
                                  children: [
                                    // Text and RichText on the left
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Unleash the magic of\nphotography & Videography for',
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.pink[800],
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(height: 8),
                                          RichText(
                                            text: const TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: 'only ',
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: '\$170',
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.red,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: ' / Per day!',
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    // Image on the right with border radius
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                          10), // Add border radius
                                      child: Image.network(
                                        'https://i.pinimg.com/736x/ec/24/0b/ec240bd09f5f428b04406d3b6ba7bc05.jpg',
                                        height: 100,
                                        width: 80,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 10),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        // Best Deal Section
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Best Deals',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Expanded(
                                    child: BestDealCard(
                                      title: 'N.N Wedding Hall',
                                      subtitle: 'Event Hall',
                                      rating: '4.1 (146)',
                                      price: '\$700/event',
                                      imageUrl:
                                          'https://i.pinimg.com/736x/ff/84/33/ff843394cb5bebe70910951349c337f5.jpg',
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Expanded(
                                    child: BestDealCard(
                                      title: 'JP Photography',
                                      subtitle: 'Photographer',
                                      rating: '4.7 (103)',
                                      price: '\$700/event',
                                      imageUrl:
                                          'https://i.pinimg.com/736x/ac/2e/fb/ac2efbb6bfa9b64c227d76e81d9ca0a7.jpg',
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}

//Offer Card
class PopularOfferCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String rating;
  final String price;
  final String location;
  final String imageUrl;

  PopularOfferCard({
    required this.title,
    required this.subtitle,
    required this.rating,
    required this.price,
    required this.location,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius:
                const BorderRadius.horizontal(left: Radius.circular(10)),
            child: Image.network(
              imageUrl,
              height: 120,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.orange, size: 14),
                      const SizedBox(width: 4),
                      Text(
                        rating,
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(
                    location,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    price,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//Best Deal card
class BestDealCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String rating;
  final String price;
  final String imageUrl;

  BestDealCard({
    required this.title,
    required this.subtitle,
    required this.rating,
    required this.price,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
            child: Image.network(
              imageUrl,
              height: 120,
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
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.orange, size: 14),
                    const SizedBox(width: 4),
                    Text(
                      rating,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  price,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
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
