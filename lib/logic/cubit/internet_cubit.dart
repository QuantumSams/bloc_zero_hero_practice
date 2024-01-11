import 'package:bloc/bloc.dart';
import 'package:internet_image/constants/enum.dart';
import 'package:meta/meta.dart';

part 'internet_state.dart';

class InternetCubit extends Cubit<InternetState> {
  InternetCubit() : super(InternetInitial());
}
