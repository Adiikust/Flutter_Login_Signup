import 'package:login_signup/utils/exports.dart';

// custom text widget
Widget customText({required String txt, required TextStyle style}) {
  return Text(
    txt,
    style: style,
  );
}

// inkwell buttons pic
Widget InkwellButtons({
  required Image image,
}) {
  return Expanded(
    child: Container(
      width: 170,
      height: 60,
      child: image,
    ),
  );
}

// sign up button
Widget SignUpContainer({required String st}) {
  return Container(
    width: double.infinity,
    height: 60,
    decoration: BoxDecoration(
      color: AppColors.kBlueColor,
      borderRadius: BorderRadius.circular(12),
    ),
    child: Center(
      child: customText(
          txt: st,
          style: const TextStyle(
            color: AppColors.kwhiteColor,
            fontWeight: FontWeight.normal,
            fontSize: 14,
          )),
    ),
  );
}

// rich text
TextSpan RichTextSpan() {
  return const TextSpan(children: [
    TextSpan(
        text: "Don’t have an account ? ",
        style: TextStyle(fontSize: 13, color: AppColors.kBlackColor)),
    TextSpan(
        text: "Login",
        style: TextStyle(
          fontSize: 13,
          color: AppColors.kBlueColor,
        )),
  ]);
}
