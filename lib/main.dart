import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:timer_count_down/timer_count_down.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, home: Ppage());
  }
}

class Ppage extends StatefulWidget {
  const Ppage({Key? key}) : super(key: key);

  @override
  State<Ppage> createState() => _PpageState();
}

class _PpageState extends State<Ppage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white10,
            foregroundColor: Colors.black,
            shadowColor: Colors.transparent,
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: const Icon(Icons.favorite),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: const Icon(Icons.share),
                ),
              )
            ],
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'X Sports Facility',
                  style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 22),
                child: Text(
                  'The best Sports Facility',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 22, top: 2),
                child: Text(
                  'Delhi, India',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              const Padding(padding: EdgeInsets.all(20)),
              Container(
                  height: (MediaQuery.of(context).size.height) / 4,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.grey[50],
                    border: Border.all(
                      color: Colors.black26,
                      width: 1.0,
                    ),
                  ),
                  padding: const EdgeInsets.all(10),
                  child: Image.asset('images/Sports-Facilities.jpg')),
              const TabBar(
                isScrollable: true,
                unselectedLabelColor: Colors.black,
                labelColor: Colors.orange,
                tabs: [
                  Tab(
                    text: 'Football',
                  ),
                  Tab(
                    text: 'Basketball',
                  ),
                  Tab(
                    text: 'Cricket',
                  ),
                  Tab(
                    text: 'Tennis',
                  ),
                  Tab(
                    text: 'Badminton',
                  )
                ],
                indicatorColor: Colors.orange,
                indicatorSize: TabBarIndicatorSize.tab,
              ),
              Expanded(
                  child: TabBarView(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                        builder: (BuildContext context) {
                                      return const Book();
                                    }),
                                  );
                                },
                                child: const Text('6:00am-6:50am')),
                            ElevatedButton(
                                onPressed: () {},
                                child: const Text('7:00am-7:50am')),
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                        builder: (BuildContext context) {
                                      return const Book();
                                    }),
                                  );
                                },
                                child: const Text('8:00am-8:50am')),
                            ElevatedButton(
                                onPressed: () {},
                                child: const Text('9:00am-9:50am')),
                            ElevatedButton(
                                onPressed: () {},
                                child: const Text('10:00am-10:50am')),
                            ElevatedButton(
                                onPressed: () {},
                                child: const Text('11:00am-11:50am')),
                            ElevatedButton(
                                onPressed: () {},
                                child: const Text('12:00pm-12:50pm')),
                            ElevatedButton(
                                onPressed: () {},
                                child: const Text('1:00pm-1:50pm')),
                            ElevatedButton(
                                onPressed: () {},
                                child: const Text('2:00pm-2:50pm')),
                            ElevatedButton(
                                onPressed: () {},
                                child: const Text('3:00pm-3:50pm')),
                            ElevatedButton(
                                onPressed: () {},
                                child: const Text('4:00pm-4:50pm')),
                            ElevatedButton(
                                onPressed: () {},
                                child: const Text('5:00pm-5:50pm')),
                            ElevatedButton(
                                onPressed: () {},
                                child: const Text('6:00pm-6:50pm')),
                            ElevatedButton(
                                onPressed: () {},
                                child: const Text('7:00pm-7:50pm')),
                            ElevatedButton(
                                onPressed: () {},
                                child: const Text('8:00pm-8:50pm')),
                            ElevatedButton(
                                onPressed: () {},
                                child: const Text('9:00pm-9:50pm')),
                            ElevatedButton(
                                onPressed: () {},
                                child: const Text('10:00pm-10:50pm')),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: const [Text('2nd Sport')],
                  ),
                  Row(
                    children: const [Text('3rd Sport')],
                  ),
                  Row(
                    children: const [Text('4th Sport')],
                  ),
                  Row(
                    children: const [Text('5th Sport')],
                  ),
                ],
              ))
            ],
          ),
        ));
  }
}

class Book extends StatelessWidget {
  const Book({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Booking Page'),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Colors.orange, onPrimary: Colors.black),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (BuildContext context) {
                return const Control();
              }),
            );
          },
          child: const Text('Confirm Booking!'),
        ),
      ),
    );
  }
}

class Control extends StatefulWidget {
  const Control({Key? key}) : super(key: key);

  @override
  State<Control> createState() => _ControlState();
}

class _ControlState extends State<Control> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Control your Sport Facility'),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.black87,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    onPrimary: Colors.white, primary: Colors.green),
                onPressed: () {
                  setState(() {
                    http.get(Uri.parse(
                        "https://api.thingspeak.com/update?api_key=3X7GN0B01M9GH4XC&field1=0"));
                  });
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context) {
                      return const CountDown();
                    }),
                  );
                },
                child: const Text('Unlock'),
              ),
              const Padding(padding: EdgeInsets.only(left: 20, right: 20)),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    onPrimary: Colors.white, primary: Colors.red),
                onPressed: () {
                  setState(() {
                    http.get(Uri.parse(
                        "https://api.thingspeak.com/update?api_key=3X7GN0B01M9GH4XC&field1=1"));
                  });
                },
                child: const Text('Lock'),
              ),
            ],
          ),
        ));
  }
}

class CountDown extends StatelessWidget {
  const CountDown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Timer to end'),
        ),
        body: Center(
          child: Countdown(
            seconds: 15,
            build: (BuildContext context, double time) => Text(time.toString()),
            interval: const Duration(seconds: 1),
            onFinished: () {
              http.get(Uri.parse(
                  "https://api.thingspeak.com/update?api_key=3X7GN0B01M9GH4XC&field1=1"));
            },
          ),
        ));
  }
}
