import 'package:flutter/material.dart';

// ignore: unused_import
import '../core/constants.dart';
import '../widgets/bottom_menu.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});
  
  get arkaplanRenkim => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: arkaplanRenkim, 

      body: Center(
        child: Text("arama ekranim"),
      ),
      bottomNavigationBar: BottomMenu(),
    );
  }
}