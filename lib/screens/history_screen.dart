import 'package:flutter/material.dart';

// ignore: unused_import
import '../core/constants.dart';
import '../widgets/bottom_menu.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  get arkaplanRenkim => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: arkaplanRenkim, 
      body: Center(
        child: Text("history ekranim"),
      ),
      bottomNavigationBar: BottomMenu(),
    );
  }
}