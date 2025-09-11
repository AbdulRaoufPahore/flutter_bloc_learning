import 'package:bloc_cubit/const/export.dart';
import 'package:bloc_cubit/practice/bloc/counter/counter_bloc.dart';

class CounterHomeCubitPr extends StatefulWidget {
  const CounterHomeCubitPr.counterHomeBlocPr({super.key});

  @override
  State<CounterHomeCubitPr> createState() => _CounterHomeCubitPrState();
}

class _CounterHomeCubitPrState extends State<CounterHomeCubitPr> {
  @override
  Widget build(BuildContext context) {
    final counterBlocPr = BlocProvider.of<CounterBlocPr>(context);
    return Scaffold(
      backgroundColor: lightGreyColor,
      appBar: appBarWidget(title: appbarSc),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BlocBuilder<CounterBlocPr, int>(
              builder: (context, counter) {
                return "$countSc $counter".text.bold.size(23).make();
              },
            ),
            20.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                elevetedButtonWidget(
                  onpress: () {
                    counterBlocPr.add(IncrementCounterPr());
                    setState(() {});
                  },
                  title: incrementSc,
                  bgColor: darkNevyColor,
                  fgColor: whiteColor,
                ),
                elevetedButtonWidget(
                  onpress: () {
                    counterBlocPr.add(DecrementCounterPr());
                    setState(() {});
                  },
                  title: decrementSc,
                  bgColor: redColor,
                  fgColor: whiteColor,
                ),
              ],
            ),
            20.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                elevetedButtonWidget(
                  onpress: () {
                    counterBlocPr.add(ResetAllCounterPr());
                    setState(() {});
                  },
                  title: resetAllSc,
                  bgColor: blueColor,
                  fgColor: whiteColor,
                ),
                elevetedButtonWidget(
                  onpress: () {
                    counterBlocPr.add(AdditionCounterPr());
                    setState(() {});
                  },
                  title: additionSc,
                  bgColor: amberColor,
                  fgColor: whiteColor,
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: deepPurpleColor,
        heroTag: "Add 50 in count",
        onPressed: () {
          counterBlocPr.add(FiftyAdditionPr());
          setState(() {});
        },
        child: "+50".text.bold.white.size(20).make(),
      ),
    );
  }
}
