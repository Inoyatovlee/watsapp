import 'package:flutter/material.dart';
import 'package:wat_sa/Feature/welcome/comfig/colors.dart';
import 'package:wat_sa/Feature/welcome/comfig/image.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.tkok,
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
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: "Read our",
                    style: TextStyle(color: AppColor.seri, height: 1.5),
                    children: [
                      TextSpan(
                        text: "Privacy Policy",
                        style: TextStyle(
                          color: AppColor.okok,
                        ),
                      ),
                      const TextSpan(
                          text: 'Tap "Agree and contiue" to accept the '),
                      TextSpan(
                        text: "Terms of Services.",
                        style: TextStyle(
                          color: AppColor.okok,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 42,
                width: MediaQuery.of(context).size.width - 100,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColor.yashil,
                        foregroundColor: AppColor.tkok,
                        splashFactory: NoSplash.splashFactory,
                        elevation: 0,
                        shadowColor: Colors.transparent),
                    child: const Text("AGREE AND CONTINUE")),
              ),
              const SizedBox(height: 50),
              Material(
                color: AppColor.tokok,
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
