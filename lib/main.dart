import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:web_api/components/theme.dart';
import 'package:web_api/screens/counter_container.dart';
import 'package:web_api/screens/dashboard.dart';
import 'package:web_api/screens/name_container.dart';

void main() {
  runApp(const BytebankApp());
}

class BytebankApp extends StatelessWidget {
  const BytebankApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themeBytebank,
      home: const NameContainer(),
    );
  }
}
