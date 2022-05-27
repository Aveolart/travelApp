import 'package:bloc/bloc.dart';
import 'package:travel_app/cubit/cubit_state.dart';

class AppCubits extends Cubit<CubitStates> {
  AppCubits() : super(InitialState()) {
    emit(WelcomeState());
  }
  void getData() {
    try {
      emit(LoadingState());
    } catch (e) {}
  }
}
