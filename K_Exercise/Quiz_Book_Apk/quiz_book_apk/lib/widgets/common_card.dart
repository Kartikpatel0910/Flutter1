import 'package:flutter/material.dart';

class CommonCard extends StatelessWidget {
  const CommonCard({
    super.key,
    required this.imgUrl,
    required this.title,
    this.onTap,
  });

  final String imgUrl;
  final String title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Image.network(imgUrl,
            height: 100,
            width: 100,
            fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}