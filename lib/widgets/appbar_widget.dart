import 'package:bloc_cubit/const/export.dart';

PreferredSizeWidget appBarWidget({String? title}) {
  return AppBar(
    centerTitle: true,
    backgroundColor: deepPurpleColor,
    automaticallyImplyLeading: false,
    iconTheme: IconThemeData(color: whiteColor),
    title: title!.text.white.bold.size(22).make(),
  );
}
