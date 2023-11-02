import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: 375,
          child: Column(
            children: [
              Column(
                children: [
                  Image.asset('assets/images/illustration-sign-up-mobile.png'),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                    child: const Text(
                      'Stay updated!',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 36,
                          color: Color.fromRGBO(59, 62, 89, 1)),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Center(
                    child: Container(
                      // color: Colors.red,
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
                      child: const Text(
                        'Join 60,000+ product and building receiving mounthy update on :',
                        style: TextStyle(color: Color.fromRGBO(59, 62, 89, 1)),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Image(
                            image: AssetImage('assets/images/icon-list.png'),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "Product discovery and building what matters.",
                            // overflow: TextOverflow.ellipsis,
                            // maxLines: 1,
                            style:
                                TextStyle(color: Color.fromRGBO(59, 62, 89, 1)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Image(
                            image: AssetImage('assets/images/icon-list.png'),
                          ),
                        ),
                        Expanded(
                          child: Text(
                              "Measuring to ensure updates are a success.",
                              style: TextStyle(
                                  color: Color.fromRGBO(59, 62, 89, 1))),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: Row(children: [
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Image(
                          image: AssetImage('assets/images/icon-list.png'),
                        ),
                      ),
                      Text("And much more!",
                          style:
                              TextStyle(color: Color.fromRGBO(59, 62, 89, 1))),
                    ]),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text('Email address',
                          style:
                              TextStyle(color: Color.fromRGBO(59, 62, 89, 1))),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        fillColor: Color.fromRGBO(59, 62, 89, 0.001),
                        hintText: 'Email@company.com',
                      ),
                    ),
                  ),
                  Container(
                    width: 375,
                    height: 40,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xFF241E2D)),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                      ),
                      onPressed: () {},
                      child: const Text('Subscribe to mounthy newsletter'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        // child: Container(
        //   height: 50,
        //   color: Colors.grey,
        //   child: Column(
        //     children: [const Text('Good bye world ')],
        //   ),
        // ),
      ),
    );
  }
}
