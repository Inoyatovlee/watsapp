import 'package:flutter/material.dart';
import 'package:wat_sa/common/utils/colors.dart';

class PrivacyAndTerms extends StatelessWidget {
  const PrivacyAndTerms({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: "Read our",
          style: TextStyle(color: AppColor.greyDark, height: 1.5),
          children: [
            TextSpan(
              text: "Privacy Policy",
              style: TextStyle(
                color: AppColor.blueDark,
              ),
            ),
            const TextSpan(text: 'Tap "Agree and contiue" to accept the '),
            TextSpan(
              text: "Terms of Services.",
              style: TextStyle(
                color: AppColor.blueDark,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
