import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:internet_image/constants/enum.dart';
import 'package:meta/meta.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

part 'internet_state.dart';

class InternetCubit extends Cubit<InternetState> {
  final Connectivity connectivity;
  late StreamSubscription internetStatusStream;

  InternetCubit({required this.connectivity}) : super(LoadingForInternet()) {
    internetStatusStream =
        connectivity.onConnectivityChanged.listen((connectStatus) {
      if (connectStatus == ConnectivityResult.wifi) {
        emitConnected(connectionType: TypeOfConnection.wifi);
      } else if (connectStatus == ConnectivityResult.mobile) {
        emitConnected(connectionType: TypeOfConnection.mobile);
      }
      if (connectStatus == ConnectivityResult.none) {
        emitDisconnected();
      }
    });
  }

  void emitConnected({required TypeOfConnection connectionType}) {
    return emit(ConnectedToInternet(connectionType: connectionType));
  }

  void emitDisconnected() {
    return emit(DisconnectedToInternet());
  }
}
