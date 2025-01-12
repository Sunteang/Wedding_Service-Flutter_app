import 'package:flutter/material.dart';
import 'package:wedding_service_app/pages/service/catering/Catering.dart';
import 'package:wedding_service_app/pages/service/decoration/Decoration.dart';
import 'package:wedding_service_app/pages/service/florist/Florist.dart';
import 'package:wedding_service_app/pages/service/make-up/MakeUp.dart';
import 'package:wedding_service_app/pages/service/photography/Photography.dart';
import 'package:wedding_service_app/pages/service/band/Band.dart';
import 'package:wedding_service_app/pages/service/dresses/Dresses.dart';
import 'package:wedding_service_app/pages/service/venues/Venues.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 40, left: 16, right: 16, bottom: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 24,
                      backgroundImage: NetworkImage(
                          'https://i.pinimg.com/736x/65/78/64/657864774184d29c4c3606640b3ec3fa.jpg'),
                    ),
                    SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Serey Sunteang',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Dangkor, Phnom Penh',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.notifications,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
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
                    margin: EdgeInsets.all(16),
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://i.pinimg.com/736x/09/83/5d/09835d1281ffbc3d66601fcec8097b7c.jpg'),
                        // 'https://cdn.vectorstock.com/i/500p/21/37/wedding-couple-vector-22022137.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Align(
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'Category',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
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
                          //test
                          // 'https://static.vecteezy.com/system/resources/thumbnails/044/620/039/small_2x/cartoon-wedding-couple-on-transparent-background-png.png',
                          // 'https://static.vecteezy.com/system/resources/thumbnails/044/620/039/small_2x/cartoon-wedding-couple-on-transparent-background-png.png',
                          // 'https://static.vecteezy.com/system/resources/thumbnails/044/620/039/small_2x/cartoon-wedding-couple-on-transparent-background-png.png',
                          // 'https://static.vecteezy.com/system/resources/thumbnails/044/620/039/small_2x/cartoon-wedding-couple-on-transparent-background-png.png',
                          // 'https://static.vecteezy.com/system/resources/thumbnails/044/620/039/small_2x/cartoon-wedding-couple-on-transparent-background-png.png',
                          // 'https://static.vecteezy.com/system/resources/thumbnails/044/620/039/small_2x/cartoon-wedding-couple-on-transparent-background-png.png',
                          // 'https://static.vecteezy.com/system/resources/thumbnails/044/620/039/small_2x/cartoon-wedding-couple-on-transparent-background-png.png',
                          // 'https://static.vecteezy.com/system/resources/thumbnails/044/620/039/small_2x/cartoon-wedding-couple-on-transparent-background-png.png',
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
                              SizedBox(height: 5),
                              Text(
                                categories[index],
                                style: TextStyle(fontSize: 12),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),

                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'Popular Offers',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 10),
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
                  SizedBox(
                    height: 10,
                  ),
                  // promotion
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 16),
                          padding: EdgeInsets.all(16),
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Unleash the magic of\nphotography & Videography for',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.pink[800],
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    RichText(
                                      text: TextSpan(
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
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // Best Deal Section
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Best Deals',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
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
                            SizedBox(width: 10),
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
      margin: EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.horizontal(left: Radius.circular(10)),
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
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.orange, size: 14),
                      SizedBox(width: 4),
                      Text(
                        rating,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Text(
                    location,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    price,
                    style: TextStyle(
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
      margin: EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
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
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.orange, size: 14),
                    SizedBox(width: 4),
                    Text(
                      rating,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Text(
                  price,
                  style: TextStyle(
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
