import 'package:chat_app/repository/auth/auth_repository.dart';
import 'package:chat_app/store/auth/state/auth_state.dart';
import 'package:state_notifier/state_notifier.dart';

class AuthNotifier extends StateNotifier<AuthState> with LocatorMixin {
  AuthNotifier(AuthState state, this.repository) : super(state);

  final AuthRepository repository;

  void signUp(String username, String password) async {
    state = AuthState.loading();

    final user = await repository.signUp(username, password);

    if (user != null) {
      state = AuthState.success(user);
    } else {
      state = AuthState.error();
    }
  }

  void login(String username, String password) async {
    state = AuthState.loading();

    final user = await repository.login(username, password);

    if (user != null) {
      state = AuthState.success(user);
    } else {
      state = AuthState.error();
    }
  }
}
