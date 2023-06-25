// ignore_for_file: sized_box_for_whitespace

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:netflix_ui/my_list.dart';
import 'package:netflix_ui/tv_shows.dart';

import 'detail_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedItem = 0;

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: DefaultTabController(
          length: 3,
          child: AppBar(
            backgroundColor: Colors.transparent,
            leading: const Icon(
              Icons.menu,
              size: 30,
              color: Colors.white,
            ),
            actions: [
              Container(
                  height: 70,
                  width: 120,
                  child: Image.asset(
                    "assets/images/netflix-logo.png",
                    fit: BoxFit.cover,
                  )),
              const SizedBox(
                width: 100,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: Icon(Icons.favorite_border),
              ),
            ],
            bottom: TabBar(
              indicator: BoxDecoration(),
              tabs: [
                Tab(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _selectedItem = 0;
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomePage(),
                            ));
                      });
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (states) {
                          return _selectedItem == 0
                              ? Colors.white
                              : Colors.transparent;
                        },
                      ),
                    ),
                    child: Text(
                      "  Movies  ",
                      style: TextStyle(
                          color:
                              _selectedItem == 0 ? Colors.black : Colors.white),
                    ),
                  ),
                ),
                Tab(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _selectedItem = 1;
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const TVShows(),
                            ));
                      });
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (states) {
                          // Check if this button's index matches the selected tab index
                          return _selectedItem == 1
                              ? Colors.white
                              : Colors.transparent;
                        },
                      ),
                    ),
                    child: Text(
                      "  TV Shows  ",
                      style: TextStyle(
                          color:
                              _selectedItem == 1 ? Colors.black : Colors.white),
                    ),
                  ),
                ),
                Tab(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _selectedItem = 2;
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MyList(),
                            ));
                      });
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (states) {
                          return _selectedItem == 2
                              ? Colors.white
                              : Colors.transparent;
                        },
                      ),
                    ),
                    child: Text(
                      "  My List  ",
                      style: TextStyle(
                          color:
                              _selectedItem == 2 ? Colors.black : Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 70,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    fillColor: const Color.fromARGB(255, 44, 43, 43),
                    hintText: "Search",
                    hintStyle: const TextStyle(
                        color: Color.fromARGB(255, 129, 125, 125),
                        fontSize: 20),
                    prefixIcon: const Icon(
                      Icons.search_outlined,
                      size: 30,
                      color: Color.fromARGB(255, 73, 72, 72),
                    ),
                    suffixIcon: const Icon(
                      Icons.mic_rounded,
                      size: 30,
                      color: Color.fromARGB(255, 92, 85, 85),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    "  Only on Netflix",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const DetailScreen()));
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          "assets/images/2.jpg",
                          fit: BoxFit.fill,
                          width: w * 0.43,
                          height: 250,
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "assets/images/dark.jpg",
                        fit: BoxFit.fill,
                        width: w * 0.43,
                        height: 250,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    "  Trending Now",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 7,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "assets/images/lucifer.jpg",
                        fit: BoxFit.fill,
                        width: w * 0.43,
                        height: 250,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "assets/images/walking-dead.jpg",
                        fit: BoxFit.fill,
                        width: w * 0.43,
                        height: 250,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "assets/images/lucifer.jpg",
                        fit: BoxFit.fill,
                        width: w * 0.43,
                        height: 250,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "assets/images/walking-dead.jpg",
                        fit: BoxFit.fill,
                        width: w * 0.43,
                        height: 250,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.transparent,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie),
            label: 'Coming Soon',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              EvaIcons.download,
              size: 20,
            ),
            label: 'Download',
          ),
          // Add more items as needed
        ],
      ),
    );
  }
}
