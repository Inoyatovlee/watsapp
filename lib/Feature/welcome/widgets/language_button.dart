import 'package:flutter/material.dart';
import 'package:wat_sa/common/utils/colors.dart';

class LanguageButton extends StatelessWidget {
  const LanguageButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColor.blueDark,
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(20),
        splashFactory: NoSplash.splashFactory,
        highlightColor: AppColor.qora,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
              Icon(Icons.keyboard_return_outlined, color: AppColor.salati),
            ],
          ),
        ),
      ),
    );
  }
}
