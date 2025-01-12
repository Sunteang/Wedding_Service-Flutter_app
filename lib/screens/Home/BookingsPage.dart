// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';

// class WeddingBookingsPage extends StatefulWidget {
//   @override
//   _WeddingBookingsPageState createState() => _WeddingBookingsPageState();
// }

// class _WeddingBookingsPageState extends State<WeddingBookingsPage> {
//   final List<Map<String, String>> bookings = [
//     {"title": "Wedding Photography", "date": "2024-12-20"},
//     {"title": "Sound System Rental", "date": "2024-12-25"},
//     {"title": "Birthday Cake", "date": "2024-12-28"},
//     {"title": "Decoration Services", "date": "2024-12-30"},
//   ];

//   void _deleteBooking(int index) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: const Text("Delete Booking"),
//           content: const Text("Are you sure you want to delete this booking?"),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//               child: const Text("Cancel"),
//             ),
//             TextButton(
//               onPressed: () {
//                 setState(() {
//                   bookings.removeAt(index);
//                 });
//                 Navigator.of(context).pop();
//               },
//               child: const Text("Delete", style: TextStyle(color: Colors.red)),
//             ),
//           ],
//         );
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.stretch,
//       children: [
//         // Booking Header with Search Box Inside
//         Container(
//           padding: const EdgeInsets.all(20.0),
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(
//               colors: [Color(0xFF64B5F6), Color(0xFF1E88E5)],
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//             ),
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               const Text(
//                 "My Bookings",
//                 style: TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white,
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//               const SizedBox(height: 12.0),
//               Padding(
//                 padding: const EdgeInsets.only(bottom: 12.0),
//                 child: Row(
//                   children: [
//                     Icon(Icons.search, color: Colors.white),
//                     const SizedBox(width: 8.0),
//                     Expanded(
//                       child: Container(
//                         decoration: BoxDecoration(
//                           color: Colors.grey.withOpacity(
//                               0.7), // Background color with opacity
//                           borderRadius:
//                               BorderRadius.circular(8.0), // Rounded corners
//                           border:
//                               Border.all(color: Colors.white), // White border
//                         ),
//                         child: TextField(
//                           decoration: InputDecoration(
//                             hintText: 'Search for bookings...',
//                             hintStyle:
//                                 TextStyle(color: Colors.white.withOpacity(0.7)),
//                             border: InputBorder.none, // Remove default border
//                             contentPadding: EdgeInsets.symmetric(
//                                 vertical: 12.0,
//                                 horizontal: 16.0), // Adjust padding inside
//                           ),
//                           style: TextStyle(color: Colors.white),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               // Search Box Section inside the header
//             ],
//           ),
//         ),
//         // Bookings List
//         Expanded(
//           child: bookings.isEmpty
//               ? Center(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: const [
//                       Icon(Icons.calendar_today, size: 100, color: Colors.grey),
//                       SizedBox(height: 16),
//                       Text(
//                         "No bookings yet!",
//                         style: TextStyle(fontSize: 18, color: Colors.grey),
//                       ),
//                     ],
//                   ),
//                 )
//               : ListView.separated(
//                   itemCount: bookings.length,
//                   separatorBuilder: (context, index) => Divider(
//                     color: Colors.grey[300],
//                     thickness: 1,
//                     indent: 16,
//                     endIndent: 16,
//                   ),
//                   itemBuilder: (context, index) {
//                     final booking = bookings[index];
//                     final bookingDate = DateFormat.yMMMMd()
//                         .format(DateTime.parse(booking['date']!));
//                     final isUpcoming = DateTime.parse(booking['date']!)
//                         .isAfter(DateTime.now());

//                     return Card(
//                       elevation: 4,
//                       margin: const EdgeInsets.symmetric(
//                         vertical: 8.0,
//                         horizontal: 16.0,
//                       ),
//                       child: ListTile(
//                         title: Text(
//                           booking['title']!,
//                           style: TextStyle(
//                             fontSize: 18,
//                             fontWeight: FontWeight.bold,
//                             color: isUpcoming
//                                 ? Colors.green[700]
//                                 : Colors.grey[700],
//                           ),
//                         ),
//                         subtitle: Text(
//                           "Date: $bookingDate",
//                           style: const TextStyle(fontSize: 16),
//                         ),
//                         leading: Icon(
//                           Icons.bookmark,
//                           color: isUpcoming ? Colors.green : Colors.grey,
//                         ),
//                         trailing: IconButton(
//                           icon: const Icon(Icons.delete, color: Colors.red),
//                           onPressed: () => _deleteBooking(index),
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//         ),
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';

class BookingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Booking History'),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.bookmark, color: Colors.black),
          onPressed: () {},
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Icon(Icons.filter_alt, color: Colors.black),
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            // Tabs
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FilterChip(
                      label: Text('All'),
                      selected: true,
                      onSelected: (bool value) {},
                      backgroundColor: Colors.grey[200],
                      selectedColor: Colors.pink[100],
                      labelStyle: TextStyle(color: Colors.pink),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    FilterChip(
                      label: Text('Upcoming'),
                      selected: false,
                      onSelected: (bool value) {},
                      backgroundColor: Colors.grey[200],
                      selectedColor: Colors.pink[100],
                      labelStyle: TextStyle(color: Colors.pink),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    FilterChip(
                      label: Text('Completed'),
                      selected: false,
                      onSelected: (bool value) {},
                      backgroundColor: Colors.grey[200],
                      selectedColor: Colors.pink[100],
                      labelStyle: TextStyle(color: Colors.pink),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    FilterChip(
                      label: Text('Cancelled'),
                      selected: false,
                      onSelected: (bool value) {},
                      backgroundColor: Colors.grey[200],
                      selectedColor: Colors.pink[100],
                      labelStyle: TextStyle(color: Colors.pink),
                    ),
                  ],
                ),
              ),
            ),

            // Booking cards
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    UnpaidBookingCard(
                      title: 'JP Makeup Studio',
                      description: 'Enhance your beauty for the special day',
                      price: '\$60/day',
                      status: 'Pending',
                      statusColor: Colors.orange,
                      dateRange: '15 Oct 2024 (12 PM) to 15 Oct 2024 (12 PM)',
                    ),
                    PaidBookingCard(
                      title: 'PK Shots Photography',
                      description: 'Capturing memorable moments...',
                      price: '\$230/day',
                      status: 'Confirmed',
                      statusColor: Colors.green,
                      dateRange: '15 Oct 2023 (12 PM) to 15 Oct 2023 (12 PM)',
                    ),
                    PaidBookingCard(
                      title: 'Beauty Decors',
                      description: 'Elevate your events with precision...',
                      price: '\$320/day',
                      status: 'Confirmed',
                      statusColor: Colors.green,
                      dateRange: '15 Oct 2025 (12 PM) to 15 Oct 2025 (12 PM)',
                    ),
                    UnpaidBookingCard(
                      title: 'JP Makeup Studio',
                      description: 'Enhance your beauty for the special day',
                      price: '\$60/day',
                      status: 'Pending',
                      statusColor: Colors.orange,
                      dateRange: '15 Oct 2024 (12 PM) to 15 Oct 2024 (12 PM)',
                    ),
                    PaidBookingCard(
                      title: 'Beauty Decors',
                      description: 'Elevate your events with precision...',
                      price: '\$320/day',
                      status: 'Confirmed',
                      statusColor: Colors.green,
                      dateRange: '15 Oct 2025 (12 PM) to 15 Oct 2025 (12 PM)',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PaidBookingCard extends StatelessWidget {
  final String title;
  final String description;
  final String price;
  final String status;
  final Color statusColor;
  final String dateRange;

  PaidBookingCard({
    required this.title,
    required this.description,
    required this.price,
    required this.status,
    required this.statusColor,
    required this.dateRange,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    'https://i.pinimg.com/736x/42/02/d9/4202d9a69c2b83b2b99e25ca1d5b97c7.jpg',
                    height: 80,
                    width: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        description,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 4),
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: statusColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        status,
                        style: TextStyle(
                          color: statusColor,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        'PAID',
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16),
            Text(
              dateRange,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UnpaidBookingCard extends StatelessWidget {
  final String title;
  final String description;
  final String price;
  final String status;
  final Color statusColor;
  final String dateRange;

  UnpaidBookingCard({
    required this.title,
    required this.description,
    required this.price,
    required this.status,
    required this.statusColor,
    required this.dateRange,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top Row with image and title
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    'https://i.pinimg.com/736x/ac/2e/fb/ac2efbb6bfa9b64c227d76e81d9ca0a7.jpg',
                    height: 80,
                    width: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        description,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 4),
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: statusColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        status,
                        style: TextStyle(
                          color: statusColor,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        'UNPAID',
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16),
            // Date Range
            Text(
              dateRange,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 16),
            // Re-Payment Button at the bottom
            Align(
              alignment: Alignment.center,
              child: ElevatedButton.icon(
                onPressed: () {
                  // Handle Re-Payment logic
                },
                icon: Icon(Icons.refresh, size: 16),
                label: Text('Re-Payment'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red.withOpacity(0.1),
                  foregroundColor: Colors.red,
                  elevation: 0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
