import 'package:seller_app/Widgets/text_style.dart';
import 'package:seller_app/consts/consts.dart';

Widget customTextField ({label, hint,controller, isDesc = false}) {
  return TextFormField(
    maxLines: isDesc ? 4:1,
    decoration: InputDecoration(
      isDense: true,
      label: boldText(
        text: label,
      ),
      enabledBorder:
      OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(
          color: white,
        ),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(
          color: white,
        ),
      ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: white,
          ),
        ),
        hintText: hint,
        hintStyle: const TextStyle(color: lightGrey),
    ),
  );
}