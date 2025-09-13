import 'package:bloc_cubit/const/export.dart';
import 'package:bloc_cubit/login/Auth/bloc/auth_bloc.dart';
import 'package:bloc_cubit/login/Auth/home_page.dart';
import 'package:bloc_cubit/login/widgets/gradient_buttons.dart';
import 'package:bloc_cubit/login/widgets/login_field.dart';
import 'package:bloc_cubit/login/widgets/social_buttons.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthFailure) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(state.error)));
          }
          if (state is AuthSuccess) {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
              (route) => false,
            );
          }
        },
        child: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            if (state is AuthLoading) {
              return Center(
                child: CircularProgressIndicator(color: Colors.white),
              );
            }
            return SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    Image.asset('assets/images/signin_balls.png'),
                    Text(
                      "Sign in",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
                      ),
                    ),
                    50.heightBox,
                    SocialButton(
                      iconPath: 'assets/svgs/g_logo.svg',
                      label: 'Continue with Google',
                    ),
                    20.heightBox,
                    SocialButton(
                      iconPath: 'assets/svgs/f_logo.svg',
                      label: 'Continue with Facebook',
                    ),
                    15.heightBox,
                    "or".text.size(17).make(),
                    15.heightBox,
                    loginField(hintText: "Email", controller: emailController),
                    15.heightBox,
                    loginField(
                      hintText: "Password",
                      controller: passwordController,
                    ),
                    20.heightBox,
                    gradientButton(
                      onPressed: () {
                        context.read<AuthBloc>().add(
                          AuthLoginRequested(
                            email: emailController.text.trim(),
                            password: passwordController.text.trim(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
