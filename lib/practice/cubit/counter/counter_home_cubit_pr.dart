import 'package:bloc_cubit/const/export.dart';

class CounterHomeCubitPr extends StatefulWidget {
  const CounterHomeCubitPr({super.key});

  @override
  State<CounterHomeCubitPr> createState() => _CounterHomeCubitPrState();
}

class _CounterHomeCubitPrState extends State<CounterHomeCubitPr> {
  final counterCubitPr = CounterCubitPr();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGreyColor,
      appBar: appBarWidget(title: appbarSc),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BlocBuilder(
              bloc: counterCubitPr,
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
                    counterCubitPr.increment();
                    setState(() {});
                  },
                  title: incrementSc,
                  bgColor: darkNevyColor,
                  fgColor: whiteColor,
                ),
                elevetedButtonWidget(
                  onpress: () {
                    counterCubitPr.decrement();
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
                    counterCubitPr.reseaAll();
                    setState(() {});
                  },
                  title: resetAllSc,
                  bgColor: blueColor,
                  fgColor: whiteColor,
                ),
                elevetedButtonWidget(
                  onpress: () {
                    counterCubitPr.addition();
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
          counterCubitPr.fiftyAddition();
          setState(() {});
        },
        child: "+50".text.bold.white.size(20).make(),
      ),
    );
  }
}
