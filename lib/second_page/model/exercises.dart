class MainExercises{
  final String image,title;
  final int number;
  final List<SubExercises> subExercises;

  MainExercises({required this.image,required this.title,required this.number,required this.subExercises});
}

class SubExercises{
  final String sub_image;

  SubExercises({required this.sub_image});
}

List<MainExercises> getExercises(){
  List<MainExercises> mainExercises=[];

  List<SubExercises> chestExercises=[];
  chestExercises.addAll([SubExercises(sub_image: "assets/chest/1.gif"),SubExercises(sub_image: "assets/chest/2.gif"),SubExercises(sub_image: "assets/chest/3.gif"),SubExercises(sub_image: "assets/chest/4.gif")
  ,SubExercises(sub_image: "assets/chest/5.gif"),SubExercises(sub_image: "assets/chest/6.gif"),SubExercises(sub_image: "assets/chest/7.gif"),SubExercises(sub_image: "assets/chest/8.gif")]);

  mainExercises.add(MainExercises(image: "assets/chest/main1.jpg", title: "Chest Exercises", number: 8, subExercises: chestExercises));

  List<SubExercises> backExercises=[];
  backExercises.addAll([SubExercises(sub_image: "assets/Back/1.gif"),SubExercises(sub_image: "assets/Back/2.gif"),SubExercises(sub_image: "assets/Back/3.gif"),SubExercises(sub_image: "assets/Back/4.gif")
    ,SubExercises(sub_image: "assets/Back/5.gif"),SubExercises(sub_image: "assets/Back/6.gif")]);

  mainExercises.add(MainExercises(image: "assets/Back/main.png", title: "Back Exercises", number: 6, subExercises: backExercises));

  List<SubExercises> bicepsExercises=[];
  bicepsExercises.addAll([SubExercises(sub_image: "assets/Biceps/1.gif"),SubExercises(sub_image: "assets/Biceps/2.gif"),SubExercises(sub_image: "assets/Biceps/3.gif"),SubExercises(sub_image: "assets/Biceps/4.gif")
    ,SubExercises(sub_image: "assets/Biceps/5.gif"),SubExercises(sub_image: "assets/Biceps/6.gif"),SubExercises(sub_image: "assets/Biceps/7.gif"),SubExercises(sub_image: "assets/Biceps/8.gif")]);

  mainExercises.add(MainExercises(image: "assets/Biceps/main.jpg", title: "Biceps Exercises", number: 8, subExercises: bicepsExercises));

  List<SubExercises> shoulderExercises=[];
  shoulderExercises.addAll([SubExercises(sub_image: "assets/shoulder/1.gif"),SubExercises(sub_image: "assets/shoulder/2.gif"),SubExercises(sub_image: "assets/shoulder/3.gif"),SubExercises(sub_image: "assets/shoulder/4.gif")
    ,SubExercises(sub_image: "assets/shoulder/5.gif"),SubExercises(sub_image: "assets/shoulder/6.gif"),SubExercises(sub_image: "assets/shoulder/7.gif")]);

  mainExercises.add(MainExercises(image: "assets/shoulder/main.jpg", title: "Shoulder Exercises", number: 7, subExercises: shoulderExercises));

  List<SubExercises> legsExercises=[];
  legsExercises.addAll([SubExercises(sub_image: "assets/legs/1.gif"),SubExercises(sub_image: "assets/legs/2.gif"),SubExercises(sub_image: "assets/legs/3.gif"),SubExercises(sub_image: "assets/legs/4.gif")
    ,SubExercises(sub_image: "assets/legs/5.gif"),SubExercises(sub_image: "assets/legs/6.gif"),SubExercises(sub_image: "assets/legs/7.gif"),SubExercises(sub_image: "assets/legs/8.gif")]);

  mainExercises.add(MainExercises(image: "assets/legs/main.jpeg", title: "Legs Exercises", number: 8, subExercises: legsExercises));



  return mainExercises;
}