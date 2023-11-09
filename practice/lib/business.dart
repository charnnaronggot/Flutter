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
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 30),
                      child: Text(
                        "All your files in one secure location, accessible anywhere.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      child: const Text(
                        "Fylo stores your most important files in one secure location. Accress them whenever you need, share and collaborate with friends, family, and co-workers.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    )
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      fillColor: Color.fromRGBO(59, 62, 89, 0.001),
                      hintText: 'Enter your email.',
                    ),
                  ),
                ),
                Container(
                  width: 375,
                  height: 40,
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: TextButton(
                    //                    style: TextButton.styleFrom(
                    //     shape: RoundedRectangleBorder(
                    //       borderRadius: BorderRadius.circular(18.0),
                    //       side: BorderSide(color: Colors.blue),
                    //     ),
                    //     backgroundColor: Colors.blue,
                    //     primary: Colors.white,
                    //  ),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2.0),
                          // side: BorderSide(color: Colors.red),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(251, 39, 52, 236)),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Get Started',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  child: Image.asset(
                    "assets/images_Fylo landing page/illustration-2.png",
                  ),
                ),
                const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 30),
                      child: Text(
                        "Stay productive, whereever you are",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      "Never let location be an issue when accessing your files.Fylo covered for all of your file storage meeds. Fylo has you covered for all of your file storage needs. ",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      "Securely share files and folfed with friends, family and colleagues fir live collaboration. No email attachment required! ",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
