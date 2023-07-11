import 'package:flutter/material.dart';

class AthikarankalScreen extends StatefulWidget {
  const AthikarankalScreen({super.key});

  @override
  State<AthikarankalScreen> createState() => _AthikarankalScreenState();
}

class _AthikarankalScreenState extends State<AthikarankalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(30),
              bottomLeft: Radius.circular(30)),
        ),
        title: const Text('அதிகாரங்கள்'),
      ),
    );
  }
}
