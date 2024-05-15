// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

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
                Text(
                  'Lumos',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'LeckerliOne',
                    fontSize: 100,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  'Amidst Darkness, Find your Light!',
                  style: TextStyle(
                    fontFamily: 'LeckerliOne-Regular',
                    fontSize: 80,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Text(
                          'I got a Dream',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                          minimumSize: Size(200, 60),
                          side: BorderSide(color: Colors.white), // White border
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Text(
                          'I see the Light',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                          minimumSize: Size(200, 60),
                          side: BorderSide(color: Colors.white), // White border
                        ),
                      ),
                    ),
                  ],
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
