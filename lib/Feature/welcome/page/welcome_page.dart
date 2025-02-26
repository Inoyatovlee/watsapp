import 'package:flutter/material.dart';
import 'package:wat_sa/Feature/welcome/widgets/language_button.dart';
import 'package:wat_sa/Feature/welcome/widgets/privacy_and_terms.dart';
import 'package:wat_sa/common/utils/colors.dart';
import 'package:wat_sa/common/utils/image.dart';
import 'package:wat_sa/common/widgets/custom_elevated_button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundDark, // shuni o'chirb qo'lsa boladi
      body: Column(
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: CircleAvatar(
                radius: 140,
                backgroundImage: AssetImage(AppImage.welkome),
              ),
            ),
          ),
          const SizedBox(height: 40),
          Expanded(
              child: Column(
            children: [
              Text(
                "Welcome to WhatsApp",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: AppColor.oq),
              ),
              const PrivacyAndTerms(),
              CustomElevatedButton(
                onPressed: () {},
                text: "AGREE AND CONTINUE",
              ),
              const SizedBox(height: 50),
              const LanguageButton()
            ],
          )),
        ],
      ),
    );
  }
}
