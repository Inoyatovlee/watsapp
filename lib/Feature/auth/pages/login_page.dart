import 'package:flutter/material.dart';
import 'package:wat_sa/common/utils/colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundDark,
      appBar: AppBar(
        backgroundColor: AppColor.backgroundDark,
        elevation: 0,
        title: Text(
          "Enter your phone number",
          style: TextStyle(color: AppColor.oq),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              splashColor: Colors.transparent,
              splashRadius: 22,
              iconSize: 22,
              padding: EdgeInsets.zero,
              constraints: BoxConstraints(minWidth: 40),
              icon: Icon(
                Icons.more_vert,
                color: AppColor.greyDark,
              ))
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: "WhatsApp will need to verify your phone number. ",
                style: TextStyle(color: AppColor.greyLight, height: 1.5),
                children: [
                  TextSpan(
                    text: "What's my number?",
                    style: TextStyle(
                      color: AppColor.blueLight,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
