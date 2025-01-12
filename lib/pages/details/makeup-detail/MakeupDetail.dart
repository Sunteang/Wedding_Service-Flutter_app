import 'package:flutter/material.dart';
import 'package:wedding_service_app/pages/booking-payment/BookingPayment.dart';

class MakeupDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Static Data
    final String title = 'Bridal Makeup Service';
    final String imageUrl =
        'https://i.pinimg.com/736x/36/92/22/369222e436dbcaf0793fb94cd23251dd.jpg';
    final String rating = '4.7';
    final String address = 'Glamour Glow Studio, Phnom Penh';
    final String distance = '1.2km (15 min)';
    final String price = '\$500 / session';
    final String description =
        'Our Bridal Makeup Service ensures you look stunning on your big day. '
        'With professional artists and premium products, we create a personalized look that complements your style. '
        'Whether traditional or contemporary, we promise a flawless and radiant finish.';

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite_border, color: Colors.black),
            onPressed: () {
              // Add to favorite action
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Image
          Container(
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Details
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title and Rating
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.orange, size: 16),
                            SizedBox(width: 4),
                            Text(
                              rating,
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              ' / 400+ reviews',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 8),

                    // Distance and Address
                    Text(
                      distance,
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    SizedBox(height: 16),
                    Text(
                      address,
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    SizedBox(height: 16),

                    // Price
                    Text(
                      price,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(height: 16),

                    // Description
                    Text(
                      'About Service',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      description,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[700],
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Bottom Book Now Button
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ElevatedButton.icon(
              onPressed: () {
                // Booking action
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BookingPaymentPage()));
              },
              icon: Icon(Icons.bookmark, color: Colors.white),
              label: Text(
                'Book Now',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink,
                elevation: 0,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
