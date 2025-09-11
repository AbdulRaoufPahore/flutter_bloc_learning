import 'package:bloc_cubit/bloc/counter_bloc.dart';
import 'package:bloc_cubit/const/export.dart';
import 'package:bloc_cubit/inc_dec_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    // // final counter = counterCubit.state;
    // final counterCubit = BlocProvider.of<CounterCubit>(context);
    // final counterBlock = BlocProvider.of<CounterBlock>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            BlocBuilder<CounterBlock, int>(
              builder: (context, counter) {
                return Text(
                  '$counter',
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(
            context,
          ).push(MaterialPageRoute(builder: (context) => IncDecPage()));
        },
        child: Icon(Icons.navigate_next),
      ),
    );
  }
}
