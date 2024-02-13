import 'package:flutter/material.dart';
import 'package:tokue/models/number.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:tokue/models/phrase.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key,required this.number,required this.color});
  final Item number;
  final Color color; 
  @override
  Widget build(BuildContext context) {
    return Container(
          height: 100,
          color: color,
          child:Row(children: [
            Container(
              color: const Color(0xffFFF6DC),
              child: Image.asset(number.image)),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text(number.jpName,style:const TextStyle(color: Colors.white,fontSize: 15),),
                Text(number.enName,style:const TextStyle(color: Colors.white,fontSize: 15),)
              ],),
            ),
           const Spacer(
              flex: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: IconButton(onPressed:(){
              try{
                 final player = AudioPlayer();
              player.play(AssetSource(number.sound));
              }
              catch(ex){
                print('exception');
              }
              
              
                 
              } ,icon:const Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 30,
              ),)
            ),
           
          ]),
        );
  }
}


class  phraseItem extends StatelessWidget {
  const phraseItem({super.key,required this.phrase,required this.color});
  final phrse phrase;
  final Color color; 
  @override
  Widget build(BuildContext context) {
    return Container(
          height: 100,
          color: color,
          child:Row(children: [
            Container(
              color:const Color(0xffFFF6DC),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text(phrase.jpName,style:const TextStyle(color: Colors.white,fontSize: 15),),
                Text(phrase.enName,style:const TextStyle(color: Colors.white,fontSize: 15),)
              ],),
            ),
           const Spacer(
              flex: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: IconButton(onPressed:(){
              try{
                 final player = AudioPlayer();
              player.play(AssetSource(phrase.sound));
              }
              catch(ex){
                print('exception');
              }
              
              
                 
              } ,icon:const Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 30,
              ),)
            ),
           
          ]),
        );
  }
}