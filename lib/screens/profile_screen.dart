import 'package:flutter/material.dart';

// ignore: unused_import
import '../core/constants.dart';
import '../widgets/bottom_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  
  get arkaplanRenkim => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: arkaplanRenkim, 

      body: Center(
        child: Text("profil ekranim"),
      ),
      bottomNavigationBar: BottomMenu(),
    );
  }
}