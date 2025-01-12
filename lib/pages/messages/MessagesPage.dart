import 'package:flutter/material.dart';
import 'package:wedding_service_app/pages/messages-details/MessagesDetails.dart';

class MessagesPage extends StatelessWidget {
  final List<Map<String, dynamic>> messages = [
    {
      'title': 'Riverside Gardens Wedding',
      'subtitle': 'Good Morning',
      'time': '3:28 pm',
      'isUnread': true,
      'imageUrl':
          'https://i.pinimg.com/736x/ff/84/33/ff843394cb5bebe70910951349c337f5.jpg',
    },
    {
      'title': ' DOM Catering',
      'subtitle': 'Good Morning',
      'time': '2:06 pm',
      'isUnread': true,
      'imageUrl':
          'https://i.pinimg.com/736x/44/d8/3d/44d83dbdbd2fb1e8de4e816755295508.jpg',
    },
    {
      'title': ' Pk Makeup',
      'subtitle': '✓ Good Morning',
      'time': '12:31 pm',
      'isUnread': false,
      'imageUrl':
          'https://i.pinimg.com/736x/36/92/22/369222e436dbcaf0793fb94cd23251dd.jpg',
    },
    {
      'title': 'Phonic Band',
      'subtitle': 'It\'s going well',
      'time': '8:58 am',
      'isUnread': false,
      'imageUrl':
          'https://i.pinimg.com/736x/65/54/9a/65549a93b8c0514db60a04937c8c3ed9.jpg',
    },
    {
      'title': 'CB Decors',
      'subtitle': 'How is it going?',
      'time': '22/10/2023',
      'isUnread': false,
      'imageUrl':
          'https://i.pinimg.com/736x/ac/2e/fb/ac2efbb6bfa9b64c227d76e81d9ca0a7.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Messages',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          final message = messages[index];
          return MessageTile(
            title: message['title']!,
            subtitle: message['subtitle']!,
            time: message['time']!,
            isUnread: message['isUnread']!,
            imageUrl: message['imageUrl']!,
          );
        },
      ),
    );
  }
}

class MessageTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String time;
  final bool isUnread;
  final String imageUrl;

  const MessageTile({
    required this.title,
    required this.subtitle,
    required this.time,
    required this.isUnread,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
        radius: 24,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(
          color: isUnread ? Colors.black : Colors.grey,
          fontWeight: isUnread ? FontWeight.bold : FontWeight.normal,
        ),
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            time,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),
          if (isUnread)
            Container(
              margin: const EdgeInsets.only(top: 4),
              width: 18,
              height: 18,
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  '2',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
        ],
      ),
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => MessagesDetailsPage()));
      },
    );
  }
}
