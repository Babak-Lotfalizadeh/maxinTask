import 'package:flutter/material.dart';

class ScaffoldWidget extends StatelessWidget {
  final Widget body;
  const ScaffoldWidget({Key? key, required this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: body,
        ),
      ),
    );
  }
}
