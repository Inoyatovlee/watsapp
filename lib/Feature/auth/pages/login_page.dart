import 'package:flutter/material.dart';
import 'package:wat_sa/Feature/auth/widget/custom_text_field.dart';
import 'package:wat_sa/common/utils/colors.dart';
import 'package:wat_sa/common/widgets/custom_elevated_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late TextEditingController countryNameController;
  late TextEditingController countryCodeController;
  late TextEditingController phoneNumberController;
  @override
  void initState() {
    countryNameController = TextEditingController(text: 'Ethiopia');
    countryCodeController = TextEditingController(text: '251');
    phoneNumberController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    countryNameController.dispose();
    countryCodeController.dispose();
    phoneNumberController.dispose();
    super.dispose();
  }

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
              constraints: const BoxConstraints(minWidth: 40),
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
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: CustomTextField(
              onTap: () {},
              controller: countryNameController,
              raedOnly: true,
              suffixIcon: Icon(
                Icons.arrow_drop_down,
                color: AppColor.greenLight,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              children: [
                SizedBox(
                  width: 70,
                  child: CustomTextField(
                    onTap: () {},
                    controller: countryCodeController,
                    prefixText: '+',
                    raedOnly: true,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                    child: CustomTextField(
                  controller: phoneNumberController,
                  hintText: 'phone number',
                  textAlign: TextAlign.left,
                  keyboardType: TextInputType.number,
                )),
              ],
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Carrier charges may apply",
            style: TextStyle(color: AppColor.greenLight),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: CustomElevatedButton(
        onPressed: () {},
        text: "NEXT",
        buttonWidth: 90,
      ),
    );
  }
}
