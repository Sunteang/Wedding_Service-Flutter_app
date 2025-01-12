import 'package:flutter/material.dart';
import 'package:wedding_service_app/pages/booking-payment/BookingPayment.dart';

class BandDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Static Data
    final String title = 'Wedding Band';
    final String imageUrl =
        'https://i.pinimg.com/736x/7a/85/2d/7a852d1743781a343b07f8e583c5dbed.jpg';
    final String rating = '4.6';
    final String address = 'Harmony Band, Phnom Penh';
    final String distance = '1.5km (20 min)';
    final String price = '\$3000 / event';
    final String description =
        'Harmony Band provides exceptional live music performances for your wedding day. '
        'Our talented musicians cover a wide range of genres to suit any mood, from romantic melodies to energetic dance numbers. '
        'With state-of-the-art sound systems and professional lighting, we ensure your wedding entertainment is unforgettable.';

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

          // Band Details
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
                              ' / 320 ratings',
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
                      'About Band',
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
          )
        ],
      ),
    );
  }
}
