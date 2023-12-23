import 'package:bmicalculator/Cubit/Bmi_State.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class bmiCubit extends Cubit<bmiState> {
  bmiCubit() : super(initialState());

  double height = 120;
  int weight = 50;
  int age = 18;
  bool isMale = true;
  void male() {
    isMale = true;

    emit(maleState());
  }

  void female() {
    isMale = false;
    emit(femaleState());
  }

  void setHeight(double num) {
    height = num;
    emit(sliderState());
  }

  weightPlus() {
    weight++;
    emit(wplus());
  }

  weightMin() {
    weight--;
    emit(wmin());
  }

  agePlus() {
    age++;
    emit(aplus());
  }

  agemin() {
    age--;
    emit(amin());
  }
}
