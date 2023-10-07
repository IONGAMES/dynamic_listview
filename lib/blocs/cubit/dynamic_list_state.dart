part of 'dynamic_list_cubit.dart';

@immutable
class DynamicListState extends Equatable {
  List<int> numbers;

  DynamicListState({
    required this.numbers,
  });

  @override
  List<Object?> get props => numbers;
}
