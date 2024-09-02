import 'package:flutter/material.dart';

class BookFlightPage extends StatefulWidget {
  const BookFlightPage({super.key});

  @override
  State<BookFlightPage> createState() => _BookFlightPageState();
}

class _BookFlightPageState extends State<BookFlightPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 300,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(150),
                  bottomRight: Radius.circular(150),
                )),
            child: Center(
                child: Image.asset(
              'assets/3.png',
              height: 200,
              width: 200,
            )),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Book your flight',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 40,
                width: 140,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(64, 147, 206, 100),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'One way',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                height: 40,
                width: 140,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(215, 234, 248, 100),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Round Trip',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            width: 308,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('From'),
                const SizedBox(
                  height: 5,
                ),
                const SizedBox(
                  height: 35,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      fillColor: Color.fromRGBO(224, 237, 246, 100),
                      filled: true,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text('To'),
                const SizedBox(
                  height: 5,
                ),
                const SizedBox(
                  height: 35,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      fillColor: Color.fromRGBO(224, 237, 246, 100),
                      filled: true,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text('Date'),
                const SizedBox(
                  height: 5,
                ),
                const SizedBox(
                  height: 35,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      fillColor: Color.fromRGBO(224, 237, 246, 100),
                      filled: true,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 50,
                  width: 280,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(64, 147, 206, 100),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'View Flights',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
