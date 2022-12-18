import 'package:flutter/material.dart';

class HomeApp extends StatelessWidget {
  const HomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.only(right: 14, left: 14, bottom: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 142, right: 142, top: 56),
                    child: Image.asset('assets/logoinr.png'),
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  const Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter a search term',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 41),
                    child: Container(
                      width: double.infinity,
                      height: 54,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        color: Colors.white,
                      ),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 16, horizontal: 14),
                        child: Text(
                          'Username',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 23,
                  ),
                  Container(
                    width: double.infinity,
                    height: 54,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                      color: Colors.white,
                    ),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 14, vertical: 16),
                      child: Text(
                        'Password',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 41,
                  ),
                  const Text(
                    'Belum punya akun? DAFTAR',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ],
              ),
              Container(
                  width: double.infinity,
                  height: 54,
                  decoration: const BoxDecoration(
                      color: Color(0xFFFEFE00),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: const Center(
                    child: Text(
                      'Login',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
