import 'dart:ffi';
import 'dart:ui' as ui;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const NavigationBar());
}

class NavigationBar extends StatelessWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyBottomNavigationBar(),
    );
  }
}

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({Key? key}) : super(key: key);
  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int selectedIndex = 0;
  static const TextStyle textStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> navbarList = <Widget>[
    stHome(),
    stProfile(),
    const Text('Favourite products', style: textStyle),
    stSettings()
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Center(child: navbarList[selectedIndex])),
      bottomNavigationBar: BottomNavigationBar(
        
        items:const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.purple),
          BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: 'Profile',
              backgroundColor: Colors.purple),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: 'Favourites',
              backgroundColor: Colors.purple),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
              backgroundColor: Colors.purple),
        ],
        currentIndex: selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

class stHome extends StatelessWidget {
  stHome({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.purple,
          shape:const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(15.0),
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications_rounded,
                  color: Colors.white,
                  size: 35,
                ))
          ],
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
              size: 30,
            ),
          ),
          title: const Text(
            "Categories",
            style: TextStyle(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        body: ListView(
          children: [
            Row(
              children: [
                Expanded(
                  child: IconButton(
                    iconSize: 220,
                    icon: Ink.image(
                      image: const AssetImage("assets/shoes.jpg"),
                    ),
                    onPressed: () {
                      const Opacity(opacity: 0.4);
                    },
                  ),
                ),
                Expanded(
                  child: IconButton(
                    iconSize: 220,
                    icon: Ink.image(
                      image: const AssetImage("assets/shoes.jpg"),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: IconButton(
                    iconSize: 220,
                    icon: Ink.image(
                      image: const AssetImage("assets/shoes.jpg"),
                    ),
                    onPressed: () {},
                  ),
                ),
                Expanded(
                  child: IconButton(
                    iconSize: 220,
                    icon: Ink.image(
                      image: const AssetImage("assets/shoes.jpg"),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: IconButton(
                    iconSize: 220,
                    icon: Ink.image(
                      image: const AssetImage("assets/shoes.jpg"),
                    ),
                    onPressed: () {},
                  ),
                ),
                Expanded(
                  child: IconButton(
                    iconSize: 220,
                    icon: Ink.image(
                      image: const AssetImage("assets/shoes.jpg"),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: IconButton(
                    iconSize: 220,
                    icon: Ink.image(
                      image: const AssetImage("assets/shoes.jpg"),
                    ),
                    onPressed: () {},
                  ),
                ),
                Expanded(
                  child: IconButton(
                    iconSize: 220,
                    icon: Ink.image(
                      image: const AssetImage("assets/shoes.jpg"),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            )
          ],
        ));
  }
}

class stProfile extends StatelessWidget {
  const stProfile({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          title: const Text(
            "Profile",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Container(
          child: Container(
            child: Column(
              children: [
                Image.asset(
                  'assets/avatar.jpg',
                  width: 140,
                  height: 140,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Metin TAŞ",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "metintas035@gmail.com",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 350,
                      height: 340,
                      margin: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 5.0,
                            blurStyle: BlurStyle.outer,
                            color: Colors.black,
                          )
                        ],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 100,
                                height: 80,
                                margin: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(96, 93, 183, 216),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.payment_outlined,
                                      size: 40,
                                      color: Colors.brown,
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 12.0),
                                      child: Text(
                                        "Payment",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                width: 100,
                                height: 80,
                                margin: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(96, 93, 183, 216),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.settings,
                                      size: 40,
                                      color: Colors.blueGrey,
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 12.0),
                                      child: Text(
                                        "Settings",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  width: 100,
                                  height: 80,
                                  margin: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(96, 93, 183, 216),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.notifications,
                                        size: 40,
                                        color:
                                            Color.fromARGB(255, 211, 194, 35),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 12.0),
                                        child: Text(
                                          "Notification",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(12.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Password : ",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color:
                                              Color.fromARGB(255, 15, 60, 96),
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text("Change ",
                                        style: TextStyle(fontSize: 16)),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 12.0),
                                child: Divider(
                                  height: 5,
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ),
                          const Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(12.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Mobile : ",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color:
                                              Color.fromARGB(255, 15, 60, 96),
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text("90-444-44-44 ",
                                        style: TextStyle(fontSize: 16)),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 12.0),
                                child: Divider(
                                  height: 5,
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ),
                          const Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(12.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Tell : ",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color:
                                              Color.fromARGB(255, 15, 60, 96),
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text("90-444-44-44 ",
                                        style: TextStyle(fontSize: 16)),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 12.0),
                                child: Divider(
                                  height: 5,
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ),
                          const Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(12.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Adress : ",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color:
                                              Color.fromARGB(255, 15, 60, 96),
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text("Bartın ",
                                        style: TextStyle(fontSize: 16)),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 12.0),
                                child: Divider(
                                  height: 5,
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ),
                          const Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(12.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Postal Code : ",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color:
                                              Color.fromARGB(255, 15, 60, 96),
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text("7421 ",
                                        style: TextStyle(fontSize: 16)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        "Edit Profile",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.blue,
                        backgroundColor: Colors.blue,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 130.0,
                        ),
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class stfavorites extends StatelessWidget {
  const stfavorites({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class stSettings extends StatelessWidget {
  const stSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Settings",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: SearchBar(
                    shadowColor: MaterialStateColor.resolveWith(
                        (states) => Colors.white),
                    hintText: "Search",
                    hintStyle:
                        const MaterialStatePropertyAll<TextStyle>(TextStyle(
                      color: Colors.grey,
                    )),
                    leading: const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                    ),
                    shape: MaterialStateProperty.all(
                        const ContinuousRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    )),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.person,
                      size: 35,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Account",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 150),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.keyboard_arrow_right,
                            size: 35,
                          )),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 5,
                color: Colors.black,
                indent: 25,
                endIndent: 45,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.notifications,
                      size: 35,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Notifications",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 140),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.keyboard_arrow_right,
                            size: 35,
                          )),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 5,
                color: Colors.black,
                indent: 25,
                endIndent: 45,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.remove_red_eye,
                      size: 35,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Account",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 150),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.keyboard_arrow_right,
                            size: 35,
                          )),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 5,
                color: Colors.black,
                indent: 25,
                endIndent: 45,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.privacy_tip_outlined,
                      size: 35,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Privacy",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 150),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.keyboard_arrow_right,
                            size: 35,
                          )),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 5,
                color: Colors.black,
                indent: 25,
                endIndent: 45,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.support_agent,
                      size: 35,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Support",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 150),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.keyboard_arrow_right,
                            size: 35,
                          )),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 5,
                color: Colors.black,
                indent: 25,
                endIndent: 45,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.help,
                      size: 35,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Account",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 150),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.keyboard_arrow_right,
                            size: 35,
                          )),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 5,
                color: Colors.black,
                indent: 25,
                endIndent: 45,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
