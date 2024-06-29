import 'package:competition/second_page/second_sub.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


import '../model/home_model.dart';
import 'model/exercises.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

final titleController=TextEditingController(text: "");
final dateController=TextEditingController(text: "");
final keyForm=GlobalKey<FormState>();
List<Myexcerise> myEexcerise=[];

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    List<MainExercises> mainExercises=getExercises();
    return Scaffold(
      backgroundColor: Color(0xff010101),
      appBar: AppBar(
        title: Text("SLOGAN"),
        backgroundColor: Color(0xff010101),
        titleTextStyle: TextStyle(color: Color(0xff4db151),fontWeight: FontWeight.bold,fontSize: 30),
        centerTitle: true,
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 8,vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                color: Color(0xff4db151),
                borderRadius: BorderRadius.circular(16)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 4,),
                  Text("Add new excerise today",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 22),),
                  SizedBox(width: 8,),
                  GestureDetector(
                    onTap: () {
                      showDialog(context: context, builder: (context) =>
                          Form(
                            key: keyForm,
                            child: AlertDialog(
                              backgroundColor: Color(0xff010101),
                              actions: [
                                SizedBox(height: 8,),
                                Align(alignment: AlignmentDirectional.topStart,
                                child: Text("Enter the new \n Exercise",style: TextStyle(color: Color(0xff4db151),fontWeight: FontWeight.w500,fontSize: 21),)),
                                SizedBox(height: 16,),
                                TextFormField(
                                  style: TextStyle(color: Colors.white),
                                  controller: titleController,
                                  validator: (value) {
                                    if(value!.isEmpty)
                                      return "Must enter excerise";
                                    else return null;
                                  },
                                  decoration: InputDecoration(
                                    labelText: "Excerise",
                                    hintText: "Excerise",
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide: BorderSide(color: Colors.orange.withOpacity(.3))
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: BorderSide(color: Colors.orange.withOpacity(.3))
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: BorderSide(color: Colors.orange.withOpacity(.3))
                                    ),
                                  ),
                                ),
                                SizedBox(height: 16,),
                                TextFormField(
                                  style: TextStyle(color: Colors.white),
                                  controller: dateController,
                                  validator: (value) {
                                    if(value!.isEmpty)
                                      return "Must enter date";
                                    else return null;
                                  },
                                  decoration: InputDecoration(
                                    labelText: "Date",
                                    hintText: "Date",
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: BorderSide(color: Colors.orange.withOpacity(.3))
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: BorderSide(color: Colors.orange.withOpacity(.3))
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: BorderSide(color: Colors.orange.withOpacity(.3))
                                    ),
                                  ),
                                ),
                                SizedBox(height: 16,),
                                Center(
                                  child: FilledButton(
                                      style: FilledButton.styleFrom(
                                        backgroundColor: Color(0xff4db151)
                                      ),
                                      onPressed: () {
                                    if(keyForm.currentState!.validate()){
                                      myEexcerise.add(Myexcerise(title: titleController.text, date: dateController.text));
                                      Navigator.pop(context);
                                    }
                                  }, child: Text("Add",style: TextStyle(color: Colors.orange.withOpacity(.8)),)),
                                )
                              ],
                            ),
                          )
                        ,);
                    },
                      child: CircleAvatar(radius: 35,backgroundColor: Color(0xfffbfcfd),backgroundImage: AssetImage("assets/add.gif")),)
                ],
              ),
            ),
            SizedBox(height: 16,),
            Expanded(child: ListView.separated(
              itemCount: mainExercises.length,
              itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SecondSubPage(subExercises: mainExercises[index].subExercises,),));
                },
                child: Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset(mainExercises[index].image,width: double.infinity,height: 180,fit: BoxFit.fill,)),
                    Container(
                      width: double.infinity,
                      height: 80,
                      color: Colors.black.withOpacity(.5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: 16,),
                          Text(mainExercises[index].title,style: TextStyle(color: Color(0xffffffff),fontSize: 22,fontWeight: FontWeight.w600),),
                          SizedBox(width: 16,),
                          Text(mainExercises[index].number.toString(),style: TextStyle(color: Color(0xffffffff),fontSize: 22,fontWeight: FontWeight.w600),),
                          SizedBox(width: 16,),
                        ],
                      ),
                    )
                  ],
                ),
              );
            }, separatorBuilder: (BuildContext context, int index) {
                return SizedBox(height: 32,);
            },))
          ],
        ),
      ),
    );
  }
}
