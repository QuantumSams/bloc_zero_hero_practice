import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'logic/cubit/internet_cubit.dart';
import 'presentation/screens/home_screen.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(
      connectivity: Connectivity(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.connectivity});
  final Connectivity connectivity;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<InternetCubit>(
      create: (context) => InternetCubit(connectivity: connectivity),
      child: const HomeScreen(),
    );
  }
}
