import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'dynamic_list_state.dart';

class DynamicListCubit extends Cubit<DynamicListState> {
  DynamicListCubit() : super(DynamicListState(numbers: List.empty()));

  void generateList() {
    if (state.numbers.isNotEmpty) {
      state.numbers.clear();
    }

    List<int> newNumbers = [];

    Random random = Random();
    int arraySize = random.nextInt(5);

    for (var i = 0; i <= arraySize; i++) {
      newNumbers.add(random.nextInt(101) + 10);
    }

    emit(DynamicListState(numbers: newNumbers));
  }

  void addElement() {
    Random random = Random();

    List<int> newNumbers = [];
    newNumbers.addAll(state.numbers);

    newNumbers.add(random.nextInt(101) + 10);

    emit(DynamicListState(numbers: newNumbers));
  }

  void removeLastElement() {
    if (state.numbers.isNotEmpty) {
      List<int> newNumbers = [];
      newNumbers.addAll(state.numbers);

      newNumbers.removeLast();

      emit(DynamicListState(numbers: newNumbers));
    }
  }
}
