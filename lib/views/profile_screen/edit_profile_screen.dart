import 'package:seller_app/Widgets/custom_textfield.dart';
import 'package:seller_app/consts/consts.dart';

import '../../Widgets/text_style.dart';
 class EditProfileScreen extends StatelessWidget {
   const EditProfileScreen({super.key});

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: purpleColor,
       appBar: AppBar(
         automaticallyImplyLeading: true,

         title: boldText(text: editProfile, size: 16.0),
         actions: [
          TextButton(onPressed: () {} , child: normalText(text: save),),
         ],
       ),
       body: Column(
         children: [
           Image.asset(imgProduct , width: 150,).box.roundedFull.clip(Clip.antiAlias).make(),
           10.heightBox,
           ElevatedButton(
               style: ElevatedButton.styleFrom(
                 backgroundColor: white
               ),
               onPressed: () {
             
           }, child: normalText(text: changeImage,color: fontGrey )),
           10.heightBox,
           const Divider(color: white,),
           customTextField(label: name, hint: "Mabans dev"),
           10.heightBox,
           customTextField(label: password,hint: passwordHint),
           10.heightBox,
           customTextField(label: confirmPass, hint: passwordHint),

         ],
       ),
     );
   }
 }
