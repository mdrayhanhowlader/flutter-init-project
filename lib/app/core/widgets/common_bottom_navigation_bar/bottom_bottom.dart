import "package:flutter/material.dart";

class BottomBottom extends StatelessWidget {
  const BottomBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.asset(
            'assets/images/cmslogo.png',
            
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            '© 2023 YAYASAN PENDIDIKAN MAAHAD TAHFIZ AL QURAN ADDIN Hakcipta Terpelihara. Dikuasakan Oleh: Awfatech Global Sdn. Bhd.',
            style: TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
