import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class WeddingBookingsPage extends StatefulWidget {
  @override
  _WeddingBookingsPageState createState() => _WeddingBookingsPageState();
}

class _WeddingBookingsPageState extends State<WeddingBookingsPage> {
  final List<Map<String, String>> bookings = [
    {"title": "Wedding Photography", "date": "2024-12-20"},
    {"title": "Sound System Rental", "date": "2024-12-25"},
    {"title": "Birthday Cake", "date": "2024-12-28"},
    {"title": "Decoration Services", "date": "2024-12-30"},
  ];

  void _deleteBooking(int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Delete Booking"),
          content: const Text("Are you sure you want to delete this booking?"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("Cancel"),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  bookings.removeAt(index);
                });
                Navigator.of(context).pop();
              },
              child: const Text("Delete", style: TextStyle(color: Colors.red)),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // Booking Header with Search Box Inside
        Container(
          padding: const EdgeInsets.all(20.0),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF64B5F6), Color(0xFF1E88E5)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                "My Bookings",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12.0),
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
                            hintText: 'Search for bookings...',
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
              // Search Box Section inside the header
            ],
          ),
        ),
        // Bookings List
        Expanded(
          child: bookings.isEmpty
              ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.calendar_today, size: 100, color: Colors.grey),
                      SizedBox(height: 16),
                      Text(
                        "No bookings yet!",
                        style: TextStyle(fontSize: 18, color: Colors.grey),
                      ),
                    ],
                  ),
                )
              : ListView.separated(
                  itemCount: bookings.length,
                  separatorBuilder: (context, index) => Divider(
                    color: Colors.grey[300],
                    thickness: 1,
                    indent: 16,
                    endIndent: 16,
                  ),
                  itemBuilder: (context, index) {
                    final booking = bookings[index];
                    final bookingDate = DateFormat.yMMMMd()
                        .format(DateTime.parse(booking['date']!));
                    final isUpcoming = DateTime.parse(booking['date']!)
                        .isAfter(DateTime.now());

                    return Card(
                      elevation: 4,
                      margin: const EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 16.0,
                      ),
                      child: ListTile(
                        title: Text(
                          booking['title']!,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: isUpcoming
                                ? Colors.green[700]
                                : Colors.grey[700],
                          ),
                        ),
                        subtitle: Text(
                          "Date: $bookingDate",
                          style: const TextStyle(fontSize: 16),
                        ),
                        leading: Icon(
                          Icons.bookmark,
                          color: isUpcoming ? Colors.green : Colors.grey,
                        ),
                        trailing: IconButton(
                          icon: const Icon(Icons.delete, color: Colors.red),
                          onPressed: () => _deleteBooking(index),
                        ),
                      ),
                    );
                  },
                ),
        ),
      ],
    );
  }
}
