import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MainNotification extends StatelessWidget {
  const MainNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Notification',
          style: TextStyle(color: Colors.red),
        ),
      ),
      body: Center(
        child: ListView(
          
          children: [

            Lottie.asset(
              'assets/notification_bell.json',
              width: 100,
              height: 300,
              // fit: BoxFit.fill,
            )
          ],
        ),
      ),
    );
  }
}
