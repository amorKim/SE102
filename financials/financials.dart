import 'package:flutter/material.dart';


class FinancialsPage extends StatefulWidget {
  const FinancialsPage({Key? key}) : super(key: key);

  @override
  State<FinancialsPage> createState() => _FinancialsPageState();
}

class _FinancialsPageState extends State<FinancialsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Financials'),
        ),
        body: const Center(
          child: Text('Financials'),
        )
    );
  }
}
