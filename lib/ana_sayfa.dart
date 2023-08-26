import 'package:flutter/material.dart';
import 'package:sayfalararasi_veri_aktarimi/ikinci_sayfa.dart';

class AnaSayfa extends StatelessWidget {
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text("YeniGün"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controller,
            ),
            SizedBox(
              height: 16,
            ),
            ElevatedButton(
              child: Text("İkinci Sayfaya Git"),
              onPressed: () {
                _ikinciSayfayiAc(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  void _ikinciSayfayiAc(BuildContext context) {
    MaterialPageRoute sayfaYolu = MaterialPageRoute(
      builder: (BuildContext context) {
        return IkinciSayfa(_controller.text);
      },
    );
    Navigator.push((context), sayfaYolu);
  }
}
