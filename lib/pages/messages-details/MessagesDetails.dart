import 'package:flutter/material.dart';

class MessagesDetailsPage extends StatelessWidget {
  final List<Map<String, dynamic>> messages = [
    {
      'text':
          'Hi, I`m interested in booking Riverside Gardens Wedding Venue for my wedding on October 15, 2023. Can you provide me with availability and pricing details?',
      'isSentByUser': true,
      'time': '3:28 pm',
    },
    {
      'text':
          'Hello! Thank you for your interest. Let me check our availability for that date and provide you with pricing details. Please hold on for a moment.',
      'isSentByUser': false,
      'time': '3:28 pm',
    },
    {
      'text': 'Of course, take your time. I appreciate it!',
      'isSentByUser': true,
      'time': '3:28 pm',
    },
    {
      'text':
          'I`ve checked, and I`m pleased to inform you that Riverside Gardens Wedding Venue is available on October 15, 2023. Here are the pricing details:\n\n- Venue Rental: \$3,500\n- Catering Package (if needed): Starting at \$40 per guest\n- Additional Services (e.g., decoration, photography): Customized packages available\n\nPlease let me know if you have any specific requirements or if you`d like to proceed with the booking.',
      'isSentByUser': false,
      'time': '3:28 pm',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://i.pinimg.com/736x/ff/84/33/ff843394cb5bebe70910951349c337f5.jpg'),
            ),
            SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Riverside Gardens Wedding',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                Text(
                  'Online',
                  style: TextStyle(fontSize: 12, color: Colors.green),
                ),
              ],
            ),
          ],
        ),
        backgroundColor: Colors.pink,
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(16),
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final message = messages[index];
                return Align(
                  alignment: message['isSentByUser']
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 4),
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: message['isSentByUser']
                          ? Colors.pink[100]
                          : Colors.grey[200],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          message['text'],
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(height: 4),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            message['time'],
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(color: Colors.grey[300]!),
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Write your message',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 16,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8),
                CircleAvatar(
                  backgroundColor: Colors.pink,
                  child: IconButton(
                    icon: Icon(Icons.send, color: Colors.white),
                    onPressed: () {
                      // Add send functionality here
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30)
        ],
      ),
    );
  }
}
