import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notificaton'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/my.jpg',
                    width: 35,
                    height: 35,
                    fit: BoxFit.cover,
                  ),
                ),
              );
            }),
      ),
    );
  }
}
