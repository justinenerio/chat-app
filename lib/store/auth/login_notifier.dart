import 'package:chat_app/repository/auth/auth_repository.dart';
import 'package:chat_app/store/auth/state/auth_state.dart';
import 'package:state_notifier/state_notifier.dart';

class LoginNotifier extends StateNotifier<AuthState> with LocatorMixin {
  LoginNotifier(state) : super(state);

  void login(String username, String password) async {
    state = AuthState.loading();

    final user = await read<AuthRepository>().login(username, password);

    if (user != null) {
      state = AuthState.success(user);
    } else {
      state = AuthState.error();
    }
  }
}
