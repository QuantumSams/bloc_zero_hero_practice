import 'package:flutter/material.dart';
import 'package:internet_image/constants/image_url.dart';
import 'package:internet_image/presentation/widgets/internet_status.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Internet Image!"),
      ),
      body: const Center(
        child: InternetStatus(
          status: "Wifi",
          url: wifiImage,
        ),
      ),
    );
  }
}
