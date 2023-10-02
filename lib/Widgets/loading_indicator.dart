import 'package:seller_app/consts/consts.dart';

Widget loadingIndicator({circleColor =purpleColor}){
  return  Center(
    child: CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation(circleColor),
    ),
  );
}