import 'package:flutter/material.dart';

import '../main.dart';


class FinancialsPage extends StatefulWidget {
  const FinancialsPage({Key? key}) : super(key: key);


  @override
  State<FinancialsPage> createState() => _FinancialsPageState();
}

class _FinancialsPageState extends State<FinancialsPage> {
  final List<Person> persons = [
    Person(course: 'CCS 106', loadunits: 3, payunits: 5, total: 3760),
    Person(course: 'IAS 101A', loadunits: 3, payunits: 5, total: 3760),
    Person(course: 'IS 101A', loadunits: 3, payunits: 3, total: 2256),
    Person(course: 'SE 102A', loadunits: 3, payunits: 5, total: 3760),
    Person(course: 'AL 102', loadunits: 3, payunits: 3, total: 2256),
    Person(course: 'LR 101', loadunits: 3, payunits: 3, total: 2256),
    Person(course: 'MATH 109', loadunits: 3, payunits: 3, total: 2256),
    Person(course: 'GEC RIZAL', loadunits: 3, payunits: 3, total: 2256),
  ];
  @override
  Widget build(BuildContext context) {
    int totalLoadUnits = persons.map((p) => p.loadunits).reduce((a, b) => a + b);
    int totalPayUnits = persons.map((p) => p.payunits).reduce((a, b) => a + b);
    double totalAmount = persons.map((p) => p.total).reduce((a, b) => a + b);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Financials'),
      ),

      body: SafeArea(
        top: true,
        minimum: const EdgeInsets.all(10.0),
        child:

        ListView(
        scrollDirection: Axis.vertical,
        children: [
          DataTable(
            columns: const [
              DataColumn(label: Text('Course')),
              DataColumn(label: Text('Load units')),
              DataColumn(label: Text('Pay units')),
              DataColumn(label: Text('TOTAL')),
            ],
            rows: [
              ...persons.map((person) => DataRow(cells: [
                DataCell(Text(person.course)),
                DataCell(Text('${person.loadunits}')),
                DataCell(Text('${person.payunits}')),
                DataCell(Text('₱${person.total.toStringAsFixed(2)}')),
              ])),
              DataRow(cells: [
                const DataCell(Text('TOTAL')),
                DataCell(Text(totalLoadUnits.toString())),
                DataCell(Text(totalPayUnits.toString())),
                DataCell(Text('₱${totalAmount.toStringAsFixed(2)}')),
              ]),
            ],
          ),
        ],
      ),
      ),
    );
  }
}




