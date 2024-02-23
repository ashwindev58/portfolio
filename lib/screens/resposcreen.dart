import 'package:flutter/material.dart';

class ResponsiveScreenWarning extends StatelessWidget {
  const ResponsiveScreenWarning({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.warning,
                size: 50.0,
                color: Colors.orange,
              ),
              const SizedBox(height: 16.0),
              Text(
                'Oops! This screen is not responsive.',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold,color: Colors.orange.shade400.withOpacity(0.8)),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8.0),
              const Text(
                'We apologize for the inconvenience.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Please view this screen on a larger device or rotate your device for a better experience.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.0,color: Colors.grey),
              ),
              const SizedBox(height: 24.0),
              // Engaging Animation
              
            ],
          ),
        ),
      ),
    );
  }
}
