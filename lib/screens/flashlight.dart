import 'package:flutter/material.dart';

class FlashLight extends StatefulWidget {
  const FlashLight({Key? key}) : super(key: key);

  @override
  State<FlashLight> createState() => _FlashLightState();
}

class _FlashLightState extends State<FlashLight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flash Light'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                // Bật đèn pin và phát nhạc ở đây
              },
              child: Text("Bật Đèn và Phát Nhạc"),
            ),
            ElevatedButton(
              onPressed: () {
                // Tắt đèn pin và dừng nhạc ở đây
              },
              child: Text("Tắt Đèn và Dừng Nhạc"),
            ),
          ],
        ),
      ),
    );
  }
}
