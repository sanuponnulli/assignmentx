import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          body: PageView(
        scrollDirection: Axis.vertical,
        children: [MyHomePage(), SecondPage()],
      )),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: Colors.amber,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          "https://media-cdn.tripadvisor.com/media/photo-s/17/75/3f/d1/restaurant-in-valkenswaard.jpg"))),
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const Icon(Icons.keyboard_return, color: Colors.white),
                        SizedBox(width: 10),
                        const Text(
                          "Tiflis",
                          style: TextStyle(color: Colors.white, fontSize: 19),
                        ),
                        const Expanded(child: SizedBox()),
                        const Icon(
                          Icons.thumb_up_alt_outlined,
                          color: Color.fromARGB(224, 244, 67, 54),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(width: 15),
                                Text(
                                  "5.0",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                          width: 90,
                          height: 35,
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.only(
                                topLeft: const Radius.circular(40),
                                bottomRight: const Radius.circular(40)),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 8.0, right: 8, bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                              child: Center(
                                  child: Text(
                                "Description",
                                style: TextStyle(fontSize: 16),
                              )),
                              width: 150,
                              height: 35,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(213, 255, 255, 255),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50))),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: Center(
                                  child: Text(
                                "Menu",
                                style: TextStyle(fontSize: 16),
                              )),
                              width: 150,
                              height: 35,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(213, 255, 255, 255),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50))),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              child: Center(
                                  child: Text(
                                "Reviews",
                                style: TextStyle(fontSize: 16),
                              )),
                              width: 150,
                              height: 35,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(213, 255, 255, 255),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50))),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: Center(
                                  child: Text(
                                "Photos",
                                style: TextStyle(fontSize: 16),
                              )),
                              width: 150,
                              height: 35,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(213, 255, 255, 255),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50))),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Call",
                      style: TextStyle(color: Colors.red, fontSize: 22),
                    ),
                    Icon(
                      Icons.call_outlined,
                      color: Colors.red,
                    ),
                    Text(
                      "+38 (096)123 45 67",
                      style: TextStyle(color: Colors.red, fontSize: 22),
                    )
                  ],
                ),
                width: MediaQuery.of(context).size.width,
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red, width: 5),
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40)),
                )),
            const SizedBox(
              height: 25,
            ),
            Container(
                child: Center(
                  child: Text(
                    "Reserve Now",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ),
                width: MediaQuery.of(context).size.width,
                height: 60,
                decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40)),
                )),
            SizedBox(
              height: 25,
            ),
            const ListTile(
              trailing: SizedBox(width: 50),
              leading:
                  Icon(Icons.location_on_outlined, size: 70, color: Colors.red),
              title: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "Vinnitsia Theatrical str.,2",
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "Discover on the map",
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ),
            const ListTile(
              trailing: SizedBox(width: 50),
              leading:
                  Icon(Icons.access_time_rounded, size: 70, color: Colors.red),
              title: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "Work schedule:\n Every day 9.00-21.00",
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "Open now",
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ),
            const ListTile(
              trailing: SizedBox(width: 50),
              leading: Icon(Icons.dinner_dining, size: 70, color: Colors.red),
              title: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "Type of food:",
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "European",
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ),
            const ListTile(
              trailing: SizedBox(width: 50),
              leading: Icon(Icons.money, size: 70, color: Colors.red),
              title: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "Average bill:\nHigh prices",
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "750-1000 UAH",
                  style: TextStyle(color: Colors.red),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
