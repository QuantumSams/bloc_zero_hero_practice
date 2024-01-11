import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_image/constants/enum.dart';
import 'package:internet_image/logic/cubit/internet_cubit.dart';
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
      body: BlocBuilder<InternetCubit, InternetState>(
        builder: (context, state) {
          if (state is ConnectedToInternet) {
            return InternetStatus(typeOfConnection: state.connectionType);
          } else {
            return const InternetStatus(
              typeOfConnection: TypeOfConnection.none,
            );
          }
        },
      ),
    );
  }
}
