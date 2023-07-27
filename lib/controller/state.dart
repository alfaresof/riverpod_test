class HomeState {
  final int number;
  final String name;
  HomeState({
    required this.number,
    required this.name,
  });

  factory HomeState.Initial() {
    return HomeState(
      number: 0,
      name: '',
    );
  }

  HomeState copyWith({
    int? number,
    String? name,
  }) {
    return HomeState(
      number: number ?? this.number,
      name: name ?? this.name,
    );
  }
}
