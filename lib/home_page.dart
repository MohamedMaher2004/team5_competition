import 'package:flutter/material.dart';

import 'model/home_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var index = 1;
  List<Widget> Pages = [HomePage()];

  List<model> hometModel = [
    model(
      title: 'chest game',
      subtitlepart1: '22/7',
      subtitlepart2: '5:00',
    ),
    model(
      title: 'back game',
      subtitlepart1: '22/7',
      subtitlepart2: '6:00',
    ),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    /*Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (index <= 10) {
          index++;
        } else {
          index = 1;
        }
      });
    });*/
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'SLOGAN',
            style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
          ),
        ),
        body: /*IndexedStack(
          index: index,
          children: Pages,
        ),*/
            Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 3.5,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/Motivate ${index}.jpg',
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                height: MediaQuery.of(context).size.height / 3.5,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green),
                child: ListView.builder(itemBuilder: (builder, index) {
                  return ListTile(
                    title: Text('${hometModel[index].title}'),
                  );
                }),
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          onTap: (value) {},
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(Icons.fitness_center),
                label: 'Clock',
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(Icons.calculate_outlined),
                label: 'Calories Calculator',
                backgroundColor: Colors.black),
          ],
        ),
      ),
    );
  }
}
