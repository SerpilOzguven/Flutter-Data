import 'package:flutter/material.dart';

class IkinciSayfa extends StatelessWidget {
  String _yaziIcerigi;

  IkinciSayfa(this._yaziIcerigi);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("İkinci Sayfa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _yaziIcerigi,
              style: TextStyle(fontSize: 36),
            ),
            SizedBox(height: 16),
            ElevatedButton(
                child: Text("İlk Sayfaya Geri Dön"),
                onPressed: () {
                  Navigator.pop(context);
                }),
          ],
        ),
      ),
    );
  }
}
