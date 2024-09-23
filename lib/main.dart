import 'package:flutter/material.dart';

void main() {
  runApp(const BusinessCardApp());
}

class BusinessCardApp extends StatelessWidget {
  const BusinessCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BusinessCardScreen(),
    );
  }
}

class BusinessCardScreen extends StatelessWidget {
  const BusinessCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2B475E),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 77,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 75,
                backgroundImage: AssetImage('Images/photo_2023-09-26_00-43-51.jpg'),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Dina Maher',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontFamily: 'Pacifico',
              ),
            ),
            const SizedBox(height: 16),
            const Divider(
              color: Color(0xFF878585),
              thickness: 1,
              indent: 60,
              endIndent: 60,
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                height: 54,
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Icon(
                        Icons.phone,
                        size: 32,
                        color: Color(0xFF2B475E),
                      ),
                    ),
                    const SizedBox(width: 25),
                    const Text(
                      '(+20)1205748793',
                      style: TextStyle(fontSize: 20),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 8),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: ListTile(
                leading: const SizedBox(
                  height: 100,
                  child: Icon(
                    Icons.mail,
                    size: 32,
                    color: Color(0xFF2B475E),
                  ),
                ),
                title: const Text(
                  'dinamaher248@gmail.com',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            const SizedBox(height: 20),
           
          ],
        ),
      ),
    );
  }
}