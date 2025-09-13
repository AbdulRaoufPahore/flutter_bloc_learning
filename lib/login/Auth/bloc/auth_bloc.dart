import 'package:bloc_cubit/const/export.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthLoginRequested>((event, emit) async {
      emit(AuthLoading());
      try {
        final email = event.email;
        final password = event.password;

        // Email validation using Regex

        if (password.length < 6) {
          return emit(AuthFailure("Password can't be less the 6 characters"));
        }
        await Future.delayed(const Duration(seconds: 1), () {
          emit(AuthSuccess(uid: "$email-$password"));
        });
      } catch (e) {
        return emit(AuthFailure(e.toString()));
      }
    });
  }
}
