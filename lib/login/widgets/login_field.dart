import 'package:bloc_cubit/const/export.dart';
import 'package:bloc_cubit/login/pallete.dart';

Widget loginField({String? hintText, final TextEditingController? controller}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 400),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(27),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Pallete.borderColor, width: 3),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Pallete.gradient2, width: 3),
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: hintText,
        ),
      ),
    ),
  );
}
