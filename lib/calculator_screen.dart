import 'package:calculator/increment_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'custom_card.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

  @override
  Widget build(BuildContext context) {

    final provider = context.watch<IncrementProvider>();
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Calculator',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
      backgroundColor: const Color(0xfff0f0e8),
      body: Column(
        children: [
          CustomCard(
            add: provider.increment1,
            subtract: provider.decrement1,
            value: provider.value1,
          ),
          CustomCard(
            add: provider.increment2,
            subtract: provider.decrement2,
            value: provider.value2,
          ),
          CustomCard(
            add: provider.increment3,
            subtract: provider.decrement3,
            value: provider.value3,
          ),
           Center(child: Text('sum: ${provider.sum}')),
        ],
      ),
    );
  }
}
