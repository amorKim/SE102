import 'package:flutter/material.dart';

class AcademicsPage extends StatefulWidget {
  const AcademicsPage({Key? key}) : super(key: key);

  @override
  State<AcademicsPage> createState() => _AcademicsPageState();
}

class _AcademicsPageState extends State<AcademicsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Academics'),
        ),
        body: const Center(
          child: Text('Academics'),
        )
    );
  }
}
