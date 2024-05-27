import 'package:flutter/material.dart';

void iSeeTheLight(BuildContext context) {
  showGeneralDialog(
    context: context,
    barrierDismissible: true,
    barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
    barrierColor: Colors.black45,
    transitionDuration: const Duration(milliseconds: 200),
    pageBuilder: (BuildContext context, Animation<double> animation,
        Animation<double> secondaryAnimation) {
      return Center(
        child: SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0, 1),
            end: Offset.zero,
          ).animate(CurvedAnimation(
            parent: animation,
            curve: Curves.easeOut,
            reverseCurve: Curves.easeIn,
          )),
          child: SafeArea(
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 0),
                      child: Image.asset(
                        'assets/img1.png',
                        width: 600, // Set the width as needed
                        height: 600, // Set the height as needed
                      ),
                    ),
                    Text(
                        '"And its warm and real and bright\n and the world has somehow shifted\n All at once, everything is different\n now that I see you"',
                        style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    },
  );
}
