import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF111B21),
      body: Column(
        children: [
          const Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: CircleAvatar(
                radius: 140,
                backgroundImage: AssetImage("assets/images/w_marke.jpg"),
              ),
            ),
          ),
          const SizedBox(height: 40),
          Expanded(
              child: Column(
            children: [
              const Text(
                "Welcome to WhatsApp",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    text: "Read our",
                    style: TextStyle(color: Color(0xFF8696A0), height: 1.5),
                    children: [
                      TextSpan(
                        text: "Privacy Policy",
                        style: TextStyle(
                          color: Color(0xFF53BDEB),
                        ),
                      ),
                      TextSpan(text: 'Tap "Agree and contiue" to accept the '),
                      TextSpan(
                        text: "Terms of Services.",
                        style: TextStyle(
                          color: Color(0xFF53BDEB),
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
                        backgroundColor: const Color(0xFF00A884),
                        foregroundColor: const Color(0xFF111B21),
                        splashFactory: NoSplash.splashFactory,
                        elevation: 0,
                        shadowColor: Colors.transparent),
                    child: const Text("AGREE AND CONTINUE")),
              ),
              const SizedBox(height: 50),
              Material(
                color: const Color(0xFF182229),
                borderRadius: BorderRadius.circular(20),
                child: InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(20),
                  splashFactory: NoSplash.splashFactory,
                  highlightColor: const Color(0xFF09141A),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.language, color: Color(0xFF00A884)),
                        SizedBox(width: 10),
                        Text(
                          "English",
                          style: TextStyle(color: Color(0xFF00A884)),
                        ),
                        SizedBox(width: 10),
                        Icon(Icons.keyboard_return_outlined,
                            color: Color(0xFF00A884)),
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
