import 'package:flutter/material.dart';
import 'package:tiga/constants.dart';
import 'package:tiga/page_tiga.dart';
import 'welconscreen.dart';

class PageDua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              'Welcom',
              style: TextStyle(
                  color: emas, fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
          Image.asset(
            'assets/logoinr.png',
            height: 120,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        foregroundColor: Colors.black,
        backgroundColor: emas,
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return PageTiga();
              },
            ),
          );
        },
        child: const Icon(Icons.keyboard_double_arrow_right),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
