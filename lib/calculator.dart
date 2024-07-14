import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var hassan = GlobalKey<FormState>();
  var Age = TextEditingController();
  var Weight = TextEditingController();
  var Height = TextEditingController();

  // var value = "";
  bool visible = true;
  bool _Pressed = true;
  bool _Pressed1 = true;
  String? no = '';
  String? nh = '';
  String? nw = '';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
        ),
        home: Scaffold(
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Form(
                key: hassan,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "SLOGAN",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                    TextFormField(
                      validator: (String? value) {
                        if (value == null || value!.isEmpty) {
                          return "Please Enter a Age";
                        }
                        return null;
                      },
                      controller: Age,
                      decoration: InputDecoration(
                        label:
                            Text("Age", style: TextStyle(color: Colors.grey)),
                        hintText: "Age",
                        errorText: no,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      validator: (String? value) {
                        if (value == null || value!.isEmpty) {
                          return "Please Enter your weight in KG";
                        }
                        return null;
                      },
                      controller: Weight,
                      obscureText: visible,
                      decoration: InputDecoration(
                        label: Text("Weight in Kilo grams",
                            style: TextStyle(color: Colors.white)),
                        //suffixIcon: Icon(Icons.lock_open,color: Colors.grey),
                        hintText: "Weight in Kilo grams",
                        errorText: nh,
                        //
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    /*********************** */
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      validator: (String? value) {
                        if (value == null || value!.isEmpty) {
                          return "Please Enter your height in Cm";
                        }
                        return null;
                      },
                      controller: Height,
                      obscureText: visible,
                      decoration: InputDecoration(
                        label: Text("Height in Cm",
                            style: TextStyle(color: Colors.white)),
                        //suffixIcon: Icon(Icons.lock_open,color: Colors.grey),
                        hintText: "Height in Cm",
                        //
                        errorText: nw,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    /*********************** */
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        MaterialButton(
                          color: const Color.fromARGB(255, 76, 155, 175),
                          minWidth: 20,
                          onPressed: () {
                            setState(() {
                              _Pressed = !_Pressed;
                            });
                          },
                          child: Text(
                            "Male",
                            style: TextStyle(
                                color: _Pressed ? Colors.black : Colors.green,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        MaterialButton(
                          color: const Color.fromARGB(255, 76, 155, 175),
                          minWidth: 20,
                          onPressed: () {
                            setState(() {
                              _Pressed1 = !_Pressed1;
                            });
                          },
                          child: Text(
                            "Female",
                            style: TextStyle(
                                color: _Pressed1 ? Colors.black : Colors.green,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MaterialButton(
                          color: const Color.fromARGB(255, 76, 155, 175),
                          minWidth: 100,
                          onPressed: () {
                            setState(() {
                              if (Age.text == null || Age.text!.isEmpty)
                                no = "Please Enter a Age";
                              else {
                                no = null;
                              }
                              if (Height.text == null || Height.text!.isEmpty)
                                nh = "Please enter your weight in KG";
                              else {
                                nh = null;
                              }
                              if (Weight.text == null || Weight.text!.isEmpty)
                                nw = "Please enter your height in Cm";
                              else {
                                nw = null;
                              }
                            });
                          },
                          child: Text(
                            "Calculate the calories you needed in day",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "The Calories you needed is ",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        InkWell(
                          child: Text(
                            "",
                            style: TextStyle(
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
