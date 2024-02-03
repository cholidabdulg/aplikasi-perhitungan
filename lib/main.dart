import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplikasi Flutter Sederhana'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HitungLuasPersegiPage(),
                  ),
                );
              },
              child: Text('HITUNG LUAS PERSEGI'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HitungLuasLingkaranPage(),
                  ),
                );
              },
              child: Text('HITUNG LUAS LINGKARAN'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfileDeveloperPage(),
                  ),
                );
              },
              child: Text('PROFILE DEVELOPER'),
            ),
          ],
        ),
      ),
    );
  }
}

class HitungLuasPersegiPage extends StatefulWidget {
  @override
  _HitungLuasPersegiPageState createState() => _HitungLuasPersegiPageState();
}

class _HitungLuasPersegiPageState extends State<HitungLuasPersegiPage> {
  double panjang = 0.0;
  double lebar = 0.0;
  double luas = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hitung Luas Persegi'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Masukkan Panjang dan Lebar:'),
            TextField(
              onChanged: (value) {
                setState(() {
                  panjang = double.parse(value);
                });
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Panjang'),
            ),
            TextField(
              onChanged: (value) {
                setState(() {
                  lebar = double.parse(value);
                });
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Lebar'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  luas = panjang * lebar;
                });
              },
              child: Text('Hitung'),
            ),
            Text('Luas: $luas'),
          ],
        ),
      ),
    );
  }
}

class HitungLuasLingkaranPage extends StatefulWidget {
  @override
  _HitungLuasLingkaranPageState createState() => _HitungLuasLingkaranPageState();
}

class _HitungLuasLingkaranPageState extends State<HitungLuasLingkaranPage> {
  double radius = 0.0;
  double luas = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hitung Luas Lingkaran'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Masukkan Jari-Jari Lingkaran:'),
            TextField(
              onChanged: (value) {
                setState(() {
                  radius = double.parse(value);
                });
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Jari-Jari'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  luas = 3.14 * radius * radius;
                });
              },
              child: Text('Hitung'),
            ),
            Text('Luas: $luas'),
          ],
        ),
      ),
    );
  }
}

class ProfileDeveloperPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Developer'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('Nama: '),
            Text('NPM: '),
            Text('Kelas: '),
            Text('Kontak: '),
            Text('Alamat: '),
          ],
        ),
      ),
    );
  }
}
