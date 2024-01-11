part of 'internet_cubit.dart';

@immutable
sealed class InternetState {}

final class LoadingForInternet extends InternetState {}

final class ConnectedToInternet extends InternetState {
  final TypeOfConnection connectionType;

  ConnectedToInternet({required this.connectionType});
}

final class DisconnectedToInternet extends InternetState {}
