import 'package:flutter/material.dart';

class IyalkalScreen extends StatefulWidget {
  const IyalkalScreen({super.key});

  @override
  State<IyalkalScreen> createState() => _IyalkalScreenState();
}

class _IyalkalScreenState extends State<IyalkalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(30),
              bottomLeft: Radius.circular(30)),
        ),
        title: const Text(
          'இயல்கள்',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
