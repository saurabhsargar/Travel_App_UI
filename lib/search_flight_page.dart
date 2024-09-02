import 'package:flutter/material.dart';
import 'package:travel_app/book_flight_page.dart';

class SearchFlightPage extends StatefulWidget {
  const SearchFlightPage({super.key});

  @override
  State<SearchFlightPage> createState() => _SearchFlightPageState();
}

class _SearchFlightPageState extends State<SearchFlightPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // Perform actions based on the selected index
    if (index == 1) {
      _onSearchPressed();
    }
  }

  void _onSearchPressed() {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => const BookFlightPage(),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
          decoration: const BoxDecoration(
            color: Color(0xFF1C5E85), // Background color (assuming blue shade)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/1.jpg',
                        height: 40,
                        width: 40,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text(
                        'Hi Tania!',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Where you want to',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              const Text(
                'go?',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search a flight',
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Upcoming Trips',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                height: 160,
                decoration: BoxDecoration(
                  color:
                      const Color.fromARGB(255, 115, 154, 177).withOpacity(0.6),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '10 May, 12:30 pm',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          '11 May, 08:15 am',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'ABC',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('.....'),
                        Icon(Icons.flight, color: Colors.white),
                        Text('.....'),
                        Text(
                          'XYZ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 20,
                          width: 150,
                          decoration: BoxDecoration(
                            color: const Color(0xFFADCBE1),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Center(
                            child: Text(
                              'Abianca, Sodaium',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF3F7EA4),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 20,
                          width: 150,
                          decoration: BoxDecoration(
                            color: const Color(0xFFADCBE1),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Center(
                            child: Text(
                              'Xyzaira, Filanto',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF3F7EA4),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Destinations',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  popularDestinations('assets/4.jpg', 'Paris', 'France'),
                  popularDestinations('assets/6.jpg', 'Rome', 'Italy'),
                  popularDestinations('assets/5.jpg', 'Istanbul', 'Turkey'),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.blue,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.blue,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.blue,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }

  Widget popularDestinations(String img, String city, String country) {
    return Container(
      padding: const EdgeInsets.fromLTRB(2, 2, 2, 3),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
      ),
      height: 160,
      width: 95,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            img,
            height: 114,
            width: 91,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            city,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            country,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Color(0xFFACABAB),
            ),
          ),
        ],
      ),
    );
  }
}
