import 'package:flutter/material.dart';

class PostPage extends StatelessWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lab02 Mizter TEANG'),
        backgroundColor: Colors.yellow,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Image.network(
            'https://serey-sunteang.vercel.app/_next/image?url=%2F_next%2Fstatic%2Fmedia%2Fteang_image.5c3fb05f.webp&w=1920&q=75',
            height: 240,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 10),
          const ListTile(
            title: Text(
              'Teang in da Midterm',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text('ITE209, UC'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.star, color: Colors.red),
                SizedBox(width: 5),
                Text('1000000'),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildActionColumn(Icons.call, 'CALL'),
              _buildActionColumn(Icons.near_me, 'ROUTE'),
              _buildActionColumn(Icons.share, 'SHARE'),
            ],
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Hello I am Serey Sunteang, A developer who have a experience in various technologies including React, Next.js, and Python.',
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }

  static Column _buildActionColumn(IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: Colors.blue),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(fontSize: 12, color: Colors.blue),
        ),
      ],
    );
  }
}
