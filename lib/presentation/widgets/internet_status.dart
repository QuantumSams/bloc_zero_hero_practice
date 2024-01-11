import 'package:flutter/material.dart';
import 'package:internet_image/constants/enum.dart';
import 'package:internet_image/data/dummy_data.dart';

class InternetStatus extends StatelessWidget {
  const InternetStatus({super.key, required this.typeOfConnection});

  final TypeOfConnection typeOfConnection;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            statusToDisplay[typeOfConnection]!.networkStatus,
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Image.network(
            statusToDisplay[typeOfConnection]!.imageURL,
            height: 300,
            width: 300,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
