import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test/controller/state.dart';

final homeProvider = StateNotifierProvider<HomeNotifier, HomeState>((ref) {
  return HomeNotifier();
});

class HomeNotifier extends StateNotifier<HomeState> {
  HomeNotifier() : super(HomeState.Initial());

  void increase() {
    state = state.copyWith(
      number: state.number + 1,
    );
  }

  void decrease() {
    state = state.copyWith(
      number: state.number - 1,
    );
  }
}
