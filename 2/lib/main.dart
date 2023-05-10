import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(
          FontAwesomeIcons.bars,
          color: Colors.black,
        ),
        title: Row(
          children: const [
            Icon(
              FontAwesomeIcons.locationDot,
              color: Colors.black,
            ),
            Text(
              'Location',
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                'images/blank-profile.png',
                height: 30,
                width: 30,
              ),
            ),
          )
        ],
      ),
      body: const HomePage(),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        unselectedIconTheme: const IconThemeData(color: Colors.grey),
        selectedItemColor: Colors.red,
        selectedIconTheme: const IconThemeData(color: Colors.red),
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(FontAwesomeIcons.windows),
          ),
          BottomNavigationBarItem(
            label: 'Favourite',
            icon: Icon(FontAwesomeIcons.heart),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(FontAwesomeIcons.user),
          ),
          BottomNavigationBarItem(
            label: 'More',
            icon: Icon(FontAwesomeIcons.ellipsis),
          ),
        ],
        currentIndex: currentindex,
        onTap: (int index) {
          setState(() {
            currentindex = index;
          });
        },
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 30, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Hey!',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Text(
                    'abcxyzzzzzz',
                    style: TextStyle(fontSize: 20),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 20, 10),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(FontAwesomeIcons.magnifyingGlass),
                hintText: 'Search',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100)),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 30, 0, 20),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Container(
                    width: 140,
                    height: 220,
                    padding: const EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: AssetImage('images/hamburger.jpg')),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 30, bottom: 30),
                          child: Text(
                            'Hamburger',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        Stack(
                          children: <Widget>[
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(100),
                              ),
                            ),
                            const Positioned(
                              top: 5,
                              bottom: 5,
                              left: 5,
                              right: 5,
                              child: Icon(
                                FontAwesomeIcons.arrowRight,
                                size: 15,
                                color: Colors.red,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Container(
                    width: 140,
                    height: 220,
                    padding: const EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: AssetImage('images/Pizza.jpg')),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 30, bottom: 30),
                          child: Text(
                            'Pizza',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Stack(
                          children: <Widget>[
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(100),
                              ),
                            ),
                            const Positioned(
                              top: 5,
                              bottom: 5,
                              left: 5,
                              right: 5,
                              child: Icon(
                                FontAwesomeIcons.arrowRight,
                                size: 15,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Container(
                    width: 140,
                    height: 220,
                    padding: const EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: AssetImage('images/Pizza.jpg')),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 30, bottom: 30),
                          child: Text(
                            'Pizza',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Stack(
                          children: <Widget>[
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(100),
                              ),
                            ),
                            const Positioned(
                              top: 5,
                              bottom: 5,
                              left: 5,
                              right: 5,
                              child: Icon(
                                FontAwesomeIcons.arrowRight,
                                size: 15,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 30, 20, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    Text(
                      'Popular',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Spacer(),
                    Text('View all'),
                    Icon(
                      FontAwesomeIcons.angleRight,
                      size: 15,
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 5),
                  child: Image.asset('images/h3.png'),
                ),
                Row(
                  children: const [
                    Text(
                      'Title',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Spacer(),
                    Text(
                      'Price',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ],
                ),
                const Text('Subtitle'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
