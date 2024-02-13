import 'package:flutter/material.dart';
import 'package:tokue/components/item.dart';
import 'package:tokue/models/number.dart';
class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  final List<Item> ColorsJp=const [
  Item(sound: 'sounds/colors/black.wav',image: 'assets/images/colors/color_black.png', jpName: 'Burakku', enName: 'Black'),
  Item(sound: 'sounds/colors/brown.wav',image: 'assets/images/colors/color_brown.png', jpName: 'Chairo', enName: 'Brown'),
  Item(sound: 'sounds/colors/dusty_yellow.wav',image: 'assets/images/colors/color_dusty_yellow.png', jpName: 'Hokori ppoi kiiro', enName: 'Dusty Yellow'),
  Item(sound: 'sounds/colors/gray.wav',image: 'assets/images/colors/color_gray.png', jpName: 'Gure ', enName: 'Gray'),
  Item(sound: 'sounds/colors/green.wav',image: 'assets/images/colors/color_green.png', jpName: 'Midori', enName: 'Green'),
  Item(sound: 'sounds/colors/red.wav',image: 'assets/images/colors/color_red.png', jpName: 'Aka', enName: 'Red'),
  Item(sound: 'sounds/colors/white.wav',image: 'assets/images/colors/color_white.png', jpName: 'Shiroi', enName: 'White'),
  Item(sound: 'sounds/colors/yellow.wav',image: 'assets/images/colors/yellow.png', jpName: 'Kiiro', enName: 'Yellow'),

 ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title:const Text('Colors')),
        body: ListView.builder(
          itemCount: ColorsJp.length,
          itemBuilder: (context,num){
            return ListItem(number: ColorsJp[num], color:const Color(0xff79359F),);
          }
          ),

    );
  }
}