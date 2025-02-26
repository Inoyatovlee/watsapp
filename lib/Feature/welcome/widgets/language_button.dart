import 'package:flutter/material.dart';
import 'package:wat_sa/common/utils/colors.dart';

class LanguageButton extends StatelessWidget {
  const LanguageButton({
    super.key,
  });

  showBottomSheet(context) {
    return showModalBottomSheet(
        // backgroundColor: AppColor.tokok,
        context: context,
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 4,
                  width: 30,
                  decoration: BoxDecoration(
                    color: AppColor.greyDark.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    const SizedBox(width: 20),
                    IconButton(
                        onPressed: () => Navigator.of(context).pop(),
                        splashColor: AppColor.greenDark,
                        splashRadius: 22,
                        iconSize: 22,
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(minWidth: 30),
                        icon: Icon(
                          Icons.close_outlined,
                          color: AppColor.greyLight,
                        )),
                    const SizedBox(width: 10),
                    const Text(
                      "App Language",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const SizedBox(width: 10),
                Divider(
                  color: AppColor.greyDark.withOpacity(0.3),
                  thickness: 0.5,
                ),
                RadioListTile(
                  value: true,
                  groupValue: true,
                  onChanged: (value) {},
                  activeColor: AppColor.greenDark,
                  title: const Text("English"),
                  subtitle: Text(
                    "(phone's language)",
                    style: TextStyle(color: AppColor.greyDark),
                  ),
                ),
                RadioListTile(
                  value: true,
                  groupValue: false,
                  onChanged: (value) {},
                  activeColor: AppColor.greenDark,
                  title: const Text("Russiy"),
                  subtitle: Text(
                    "(Amharic)",
                    style: TextStyle(color: AppColor.greyDark),
                  ),
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColor.tokok,
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: () => showBottomSheet(context),
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
