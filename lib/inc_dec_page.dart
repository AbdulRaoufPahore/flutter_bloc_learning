import 'package:bloc_cubit/bloc/counter_bloc.dart';
import 'package:bloc_cubit/const/export.dart';

class IncDecPage extends StatelessWidget {
  const IncDecPage({super.key});

  @override
  Widget build(BuildContext context) {
    final counterBlock = BlocProvider.of<CounterBlock>(context);
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,

        children: [
          FloatingActionButton(
            onPressed: () {
              counterBlock.add(IncrementCounter());
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              // counterCubit.reset();
              counterBlock.add(ResetAllCounter());
            },
            tooltip: 'Reset',
            child: const Icon(Icons.delete),
          ),

          FloatingActionButton(
            onPressed: () {
              // counterCubit.decrement();
              counterBlock.add(DecrementCounter());
            },
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
