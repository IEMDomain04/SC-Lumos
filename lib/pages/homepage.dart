import 'package:flutter/material.dart';
import 'package:lumos/pages/dream.dart';
import 'package:lumos/pages/light.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Background
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/background1.png"), fit: BoxFit.fill)),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                //H1; title
                Text(
                  'Lumos',
                  style: TextStyle(
                    fontFamily: 'LeckerliOne',
                    fontSize: 150,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        offset: Offset(1.0, 10.0),
                        blurRadius: 20.0,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),

                //H2: Title
                Text(
                  'Amidst Darkness, Find your Light!',
                  style: TextStyle(
                    fontFamily: 'LeckerliOne',
                    fontSize: 50,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        offset: Offset(1.0, 5.0),
                        blurRadius: 25.0,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                SingleChildScrollView(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: OutlinedButton(
                          onPressed: () {
                            iGotADream(context);
                          },
                          child: Text(
                            'I got a Dream',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                            minimumSize: Size(200, 60),
                            side:
                                BorderSide(color: Colors.white), // White border
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: OutlinedButton(
                          onPressed: () {
                            iSeeTheLight(context);
                          },
                          child: Text(
                            'I see the Light',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                            minimumSize: Size(200, 60),
                            side:
                                BorderSide(color: Colors.white), // White border
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
