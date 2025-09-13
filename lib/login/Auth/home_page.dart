import 'package:bloc_cubit/const/export.dart';
import 'package:bloc_cubit/login/Auth/bloc/auth_bloc.dart';
import 'package:bloc_cubit/login/Auth/login_page.dart';
import 'package:bloc_cubit/login/widgets/gradient_buttons.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final authState = context.watch<AuthBloc>().state as AuthSuccess;
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("HomeScreen")),
      body: Center(
        child: Column(
          children: [
            Text(
              authState.uid,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            20.heightBox,

            gradientButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
