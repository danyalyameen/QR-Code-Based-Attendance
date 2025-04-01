class CounterModel {
  final int count;

  CounterModel({required this.count});

  CounterModel copyWith (int? value) {
    return CounterModel(
      count: value ?? count,
    );
  }
}