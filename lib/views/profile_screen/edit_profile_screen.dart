import 'package:seller_app/consts/consts.dart';

import '../../Widgets/text_style.dart';
 class EditProfileScreen extends StatelessWidget {
   const EditProfileScreen({super.key});

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         automaticallyImplyLeading: true,
         title: boldText(text: settings, size: 16.0),
         actions: [
          TextButton(onPressed: () {} , child: normalText(text: save),),
         ],
       ),
     );
   }
 }
