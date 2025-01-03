// ignore: unused_import
import 'package:dotlottie_loader/dotlottie_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
// ignore: unused_import
import 'package:lottie/lottie.dart';

// ignore: unused_import
import '../core/constants.dart';
import '../widgets/bottom_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  
  get arkaplanRenkim => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: arkaplanRenkim, 
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Fırsatlar cepte',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: const Icon(CupertinoIcons.refresh, color: Colors.black),
            onPressed: () {
              
            },
          ),
        ],
      ),

      
      drawer: Drawer(
        backgroundColor: arkaplanRenkim,
        elevation: 0,
        child: Column(
          children: [
         
            Container(
              height: 200,
             
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    CupertinoIcons.person_circle,
                    size: 80,
                    color: Colors.black87,
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
       
            ListTile(
              leading: const Icon(CupertinoIcons.home),
              title: const Text('Ana Sayfa'),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: const Icon(CupertinoIcons.search),
              title: const Text('History'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.person),
              title: const Text('Profile'),
              onTap: () {
                context.go("/profile");
              },
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.settings),
              title: const Text('Ayarlar'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          
            const Text(
              'Ankara', 
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              '18°C | Güneşli', 
              style: TextStyle(
                fontSize: 24,
                color: Colors.black54,
              ),
            ),
               Expanded(
           child: Container(
    width: 150,
    height: 150,
    child: Image.asset(
      'assets/icons/logo2.webp', 
      fit: BoxFit.contain,
    ),
  ),
),

            const SizedBox(height: 32),
           
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildWeatherInfo('Nem', '%65'),
                _buildWeatherInfo('Rüzgar', '10 km/h'),
                _buildWeatherInfo('Hissedilen', '17°C'),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomMenu(),
    );
  }

Widget _buildWeatherInfo(String title, String value) {
  return Column(
    children: [
      Text(
        value,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ), 
      ), 
      const SizedBox(height: 8),
      Text(
        title,
        style: const TextStyle(color: Colors.black54),
      ), 
    ], 
);
}
}