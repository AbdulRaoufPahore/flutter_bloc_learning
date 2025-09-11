import 'package:bloc_cubit/const/export.dart';

Widget elevetedButtonWidget({
  String? title,
  onpress,
  Color? bgColor,
  Color? fgColor,
}) {
  return ElevatedButton(
    onPressed: onpress,
    style: ElevatedButton.styleFrom(backgroundColor: bgColor),
    child: title!.text.color(fgColor).bold.size(20).make(),
  ).box.color(bgColor!).height(50).shadow5xl.roundedSM.width(145).make();
}
