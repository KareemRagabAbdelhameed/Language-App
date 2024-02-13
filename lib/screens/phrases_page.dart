import 'package:flutter/material.dart';
import 'package:tokue/components/item.dart';
import 'package:tokue/models/phrase.dart';
class PhrasePage extends StatelessWidget {
  const PhrasePage({super.key});
final List<phrse> phrasesList= const[
 phrse(
  sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
  jpName: 'kodoku suru koto o wasurenaide kudasai',
  enName: "don't forget to subscribe"),
  phrse(
  sound: 'sounds/phrases/i_love_programming.wav',
  jpName: 'watashi wa puroguramingu daisukidesu',
  enName: "I love programming"),
  phrse(
  sound: 'sounds/phrases/programming_is_easy.wav',
  jpName: 'puroguramingu wa kantandesu',
  enName: "programming is easy"),
  phrse(
  sound: 'sounds/phrases/where_are_you_going.wav',
  jpName: 'doko ni iku no',
  enName: "where are you going"),
  phrse(
  sound: 'sounds/phrases/what_is_your_name.wav',
  jpName: 'namae wa nandesu ka',
  enName: "what is your name"),
  phrse(
  sound: 'sounds/phrases/i_love_anime.wav',
  jpName: 'watashi wa anime ga daisukidesu',
  enName: "I love anime"),
  phrse(
  sound: 'sounds/phrases/how_are_you_feeling.wav',
  jpName: 'go kibun wa ikagadesu ka',
  enName: "how are you feeling?"),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:const Color(0xff46322B),
        title:const Text('Phrases'),
      ),
      body: ListView.builder(
        itemCount: phrasesList.length,
        itemBuilder: (context,num){
          return phraseItem(phrase:phrasesList[num], color:const Color(0xff50ADC7));
        }),
      
    );
  }
}