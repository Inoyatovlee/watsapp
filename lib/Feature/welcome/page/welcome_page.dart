import 'package:flutter/material.dart';
import 'package:wat_sa/Feature/welcome/widgets/privacy_and_terms.dart';
import 'package:wat_sa/common/utils/colors.dart';
import 'package:wat_sa/common/utils/image.dart';
import 'package:wat_sa/common/widgets/custom_elevated_button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundDark,
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
              PrivacyAndTerms(),
              CustomElevatedButton(
                onPressed: () {},
                text: "AGREE AND CONTINUE",
              ),
              const SizedBox(height: 50),
              Material(
                color: AppColor.blueDark,
                borderRadius: BorderRadius.circular(20),
                child: InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(20),
                  splashFactory: NoSplash.splashFactory,
                  highlightColor: AppColor.qora,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.language, color: AppColor.salati),
                        const SizedBox(width: 10),
                        Text(
                          "English",
                          style: TextStyle(color: AppColor.salati),
                        ),
                        const SizedBox(width: 10),
                        Icon(Icons.keyboard_return_outlined,
                            color: AppColor.salati),
                      ],
                    ),
                  ),
                ),
              )
            ],
          )),
        ],
      ),
    );
  }
}
