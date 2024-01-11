import 'package:flutter/material.dart';

class InternetStatus extends StatelessWidget {
  const InternetStatus({super.key, required this.status, required this.url});

  final String status;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          status,
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 20,
        ),
        Image.network(url),
      ],
    );
  }
}
