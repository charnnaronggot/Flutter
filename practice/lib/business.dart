import 'package:flutter/material.dart';

class BusinessWidget extends StatefulWidget {
  const BusinessWidget({super.key});

  @override
  State<BusinessWidget> createState() => _BusinessWidgetState();
}

class SubWidget extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;

  SubWidget({required this.text, this.textStyle});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: textStyle ??
              const TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w100),
        ),
        const SizedBox(width: 10),
      ],
    );
  }
}

class _BusinessWidgetState extends State<BusinessWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: 375,
          child: Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/images_Fylo landing page/logo.png",
                        width: 100,
                      ),
                      Container(
                        child: Row(
                          children: [
                            SubWidget(
                              text: 'Product',
                              textStyle: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w100),
                            ),
                            SubWidget(
                              text: 'Team',
                            ),
                            SubWidget(
                              text: 'Sign In',
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Image.asset(
                    "assets/images_Fylo landing page/illustration-1.png",
                  ),
                ),
                Container(
                  child: Text(""),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
