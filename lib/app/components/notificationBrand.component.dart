import 'package:flutter/material.dart';

class NotificationBrand extends StatelessWidget {
  int notification;

  NotificationBrand({Key? key, required this.notification}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        color: Colors.red,
        width: 22,
        height: 22,
        child: Center(
          child: Text(
            notification >= 100 ? "+99" : notification.toString(),
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 10,
            ),
          ),
        ),
      ),
    );
  }
}
