import 'package:flutter/material.dart';
import 'package:wedding_service_app/pages/booking-payment/BookingPayment.dart';

class FloristDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Static Data
    final String title = 'Wedding Florist';
    final String imageUrl =
        'https://i.pinimg.com/736x/82/99/ca/8299ca7abdb211aec4affbe925333d44.jpg';
    final String rating = '4.5';
    final String address = 'Bloom Floral Studio, Siem Reap';
    final String distance = '500m (8 min)';
    final String price = '\$800 / arrangement';
    final String description =
        'Bloom Floral Studio specializes in creating exquisite floral arrangements for weddings. '
        'With fresh blooms sourced daily, our team crafts designs that capture the essence of love and celebration. '
        'From elegant bouquets to elaborate venue decorations, we provide services that ensure your wedding is adorned with beauty and grace.';

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
                              ' / 320+ reviews',
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
                      'About Florist',
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
