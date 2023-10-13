import 'names_screen_view_model.dart';

class NamesScreenViewModelImpl extends NamesScreenViewModel {
  NamesScreenViewModelImpl(super.state);

  @override
  void onInit() {
    fetchDataFromNetwork();
  }

  @override
  Future<void> fetchDataFromNetwork() async {
    state = state.copyWith(showLoading: true);

    // Simulate a network request here (replace with actual network code)
    await Future.delayed(const Duration(seconds: 2));

    // Update the state with fetched data
    state = state.copyWith(
      showLoading: false,
      names: [
        "John",
        "Alice",
        "Bob",
        "Eve",
        "Charlie",
        "David",
        "Emily",
        "Frank",
        "Grace",
        "Henry"
      ], // Replace with your fetched data
    );
  }
}
