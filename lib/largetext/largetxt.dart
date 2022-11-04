import 'package:flutter/material.dart';
 class lgtxt extends StatelessWidget {
   double size;
   final String text;
   final Color color;
    lgtxt({Key? key,this.size=30,required this.text,this.color=Colors.black}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return Text(
       text,
       style: TextStyle(
         color: color,
         fontSize: size,
         fontWeight: FontWeight.bold,
                ),
     );
   }
 }

class txt extends StatelessWidget {
  double size;
  final String text;
  final Color color;
  txt({Key? key,this.size=16,required this.text,this.color=Colors.black54}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
      ),
    );
  }
}

class Category{
  final String title;
  final IconData icon;
  Category({required this.title,required this.icon});
}

List<Category>  plan=[
  Category(title: "Save places you\'d like to visit", icon: Icons.favorite),
  Category(title: "See your saves on a map", icon: Icons.location_on_outlined),
  Category(title: "Keep track of notes,links, and more", icon: Icons.sticky_note_2_outlined),
  Category(title: "Share and collaborate on your plans", icon: Icons.person_add_alt_outlined)
];