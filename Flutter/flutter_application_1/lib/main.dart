import 'package:flutter/material.dart';

void main() {
  runApp(Aplikasi());
}

class Aplikasi extends StatelessWidget {
  const Aplikasi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Mobile')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(),
            ElevatedButton(onPressed: () {}, child: Text('Home')),
            IconButton(onPressed: () {}, icon: Icon(Icons.facebook)),
            SizedBox(height: 20),
            Text(
              'Selamat datang',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Center(
              child: Column(
                children: [
                  Text(
                    'Nama: Naiyla S. Karim',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'NPM: 07352311164',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Jurusan: Informatika',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
