
import 'package:flutter/material.dart';
import 'package:travel_app/search_flight_page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.only(top: 125.0),
          child: Column(
            children: [
              Container(
                height: 313,
                width: 304,
                decoration: const BoxDecoration(
                    color: Colors.white, shape: BoxShape.circle),
                child: Center(
                  child: Image.asset(
                    'assets/2.png',
                    height: 205,
                    width: 220,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Let`s Enjoy A',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                'New World',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Search the safest destination',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(64, 147, 206, 100),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const SearchFlightPage(),
                    ));
                  },
                  child: const Text(
                    'Get started  ',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
