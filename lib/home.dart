import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fitHeight,
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1600891964599-f61ba0e24092?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cmVzdGF1cmFudCUyMGZvb2R8ZW58MHx8MHx8&w=1000&q=80"))),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 155,
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(12)),
                      child: Row(
                        children: [
                          ClipOval(
                            child: Image.network(
                              "https://yt3.ggpht.com/ytc/AMLnZu-WCPytY25vnp0GFcCrTIQ0VAgIs5oqKK2zNgDl5A=s900-c-k-c0x00ffffff-no-rj",
                              fit: BoxFit.fill,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Download on the",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                              Text(
                                "App Store",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 155,
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(12)),
                      child: Row(
                        children: [
                          ClipOval(
                            child: Image.network(
                                scale: 10,
                                fit: BoxFit.fill,
                                "https://w0.peakpx.com/wallpaper/678/484/HD-wallpaper-playstore-black-google-googleplaystore-logo-material-store.jpg"),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Download on the",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                              Text(
                                "Play Store",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 170,
                ),
                Container(
                  width: 270,
                  height: 45,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(210, 255, 255, 255),
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(
                          Icons.location_on_outlined,
                          color: Colors.red,
                        ),
                        Text("Vinnitsia,Ukraine"),
                        Icon(Icons.arrow_drop_down)
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  width: 270,
                  height: 45,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(210, 255, 255, 255),
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("e.g.,Meat&Cheaps"),
                        Icon(Icons.search)
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  width: 270,
                  height: 45,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(210, 255, 255, 255),
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(
                          Icons.calendar_month,
                        ),
                        Text("01.05.2022"),
                        Icon(
                          Icons.access_time_outlined,
                        ),
                        Text("18.00"),
                        Icon(Icons.search)
                      ],
                    ),
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
