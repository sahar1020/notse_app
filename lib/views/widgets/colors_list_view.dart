import 'package:flutter/material.dart';

class ColorItem  extends StatelessWidget {
  const ColorItem ({super.key, required this.isActive, required this.color});
final bool isActive;
final Color color;
  @override
  Widget build(BuildContext context) {
    return  isActive ? CircleAvatar(
      radius: 38,
      backgroundColor: Colors.white,
      child:  CircleAvatar(
        radius: 36,
        backgroundColor: color,
      ),
    ) :   CircleAvatar(
      radius: 38,
      backgroundColor: color,
    );
  }
}

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentIndex=0;
  List<Color>colors=const[
    Color(0xff8d5a97),
    Color(0xff907f9f),
    Color(0xffa4a5ae),
    Color(0xffb0c7bd),
    Color(0xffb8ebd0),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38*2,
      child: ListView.builder(
         itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return   Padding(
            padding:const  EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: () {
                currentIndex=index;
                setState(() {
                  
                });
              },
              child: ColorItem(
                color: colors[index],
                isActive: currentIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}