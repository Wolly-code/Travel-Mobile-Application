import 'package:bloc/bloc.dart';
import 'package:travel/cubit/app_cubit_states.dart';

class AppCubits extends Cubit<CubitState> {
  AppCubits() : super(InititalState()) {
    emit(WelcomeState());
  }
}
