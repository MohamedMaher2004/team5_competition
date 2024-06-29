import 'package:flutter/material.dart';

import 'model/exercises.dart';


class SecondSubPage extends StatefulWidget {

  final List<SubExercises> subExercises;
  const SecondSubPage({super.key, required this.subExercises});

  @override
  State<SecondSubPage> createState() => _SecondSubPageState();
}

class _SecondSubPageState extends State<SecondSubPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff010101),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 16,vertical: 16),
        child: ListView.separated(
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Text("The excerise performs 10 reps in 3 sets",style: TextStyle(color:Color(0xff4db151),fontSize: 22,fontWeight: FontWeight.w500),),
                  SizedBox(height: 8,),
                  ClipRRect(borderRadius: BorderRadius.circular(16),child: Image.asset(widget.subExercises[index].sub_image,width: double.infinity,height: 240,fit: BoxFit.fill,)),

                ],
              );
            },
            separatorBuilder: (context, index) => Padding(
              padding:  EdgeInsets.symmetric(vertical: 16),
              child: Divider(color: Colors.white,thickness: 2),
            ),
            itemCount: widget.subExercises.length),
      ),
    );
  }
}
