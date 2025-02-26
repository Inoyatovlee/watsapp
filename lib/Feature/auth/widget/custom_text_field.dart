import 'package:flutter/material.dart';
import 'package:wat_sa/common/utils/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      this.controller, //Matn maydonidagi qiymatni boshqarish
      this.hintText, // Maydonda ko‘rsatiladigan tavsiya matn
      this.raedOnly, // Faqat o‘qish rejimi
      this.textAlign, // Matnni hizalash
      this.keyboardType, // Klaviatura turi
      this.prefixText, // Kiritish maydonidan oldin qo‘shiladigan matn
      this.onTap, // Foydalanuvchi maydonga bosganda ishlaydigan funk
      this.suffixIcon, // Matn maydoni oxiriga qo‘shiladigan ikonka
      this.onChanged}); // Matn o‘zgarganda ishga tushadigan funksiya

  final TextEditingController? controller;
  final String? hintText;
  final bool? raedOnly;
  final TextAlign? textAlign;
  final TextInputType? keyboardType;
  final String? prefixText;
  final VoidCallback? onTap;
  final Widget? suffixIcon;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      controller: controller,
      readOnly: raedOnly ?? false,
      textAlign: textAlign ?? TextAlign.center,
      keyboardType: raedOnly == null ? keyboardType : null,
      onChanged: onChanged,
      style: TextStyle(color: AppColor.oq),
      decoration: InputDecoration(
        isDense: true,
        prefixText: prefixText,
        suffix: suffixIcon,
        hintText: hintText,
        hintStyle: TextStyle(color: AppColor.greyLight),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColor.greenDark),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColor.greenDark, width: 2),
        ),
      ),
    );
  }
}
